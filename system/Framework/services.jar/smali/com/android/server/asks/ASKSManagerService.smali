.class public Lcom/android/server/asks/ASKSManagerService;
.super Landroid/content/pm/IASKSManager$Stub;
.source "ASKSManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/asks/ASKSManagerService$Deletable;,
        Lcom/android/server/asks/ASKSManagerService$Restrict;,
        Lcom/android/server/asks/ASKSManagerService$ASKSSession;,
        Lcom/android/server/asks/ASKSManagerService$ASKSState;
    }
.end annotation


# static fields
.field static final ASKS_VERSION:Ljava/lang/String; = "4.0"

.field static final TAG:Ljava/lang/String; = "ASKSManager"

.field static mASKSPolicyVersion:Ljava/lang/String;


# instance fields
.field private final AASA_CASE:I

.field private final ADP_CASE:I

.field private final ADP_POLICY_VERSION:Ljava/lang/String;

.field private final ADP_VERSION:Ljava/lang/String;

.field private final ASKS_BLACK:I

.field private final ASKS_CASE:I

.field private final ASKS_CERTSTORE:I

.field private final ASKS_CRL:I

.field private final ASKS_FILE:Ljava/lang/String;

.field private final ASKS_HALFBLACK:I

.field private final ASKS_KNOWN:I

.field private final ASKS_TRUSTEDSTORE:I

.field private CA_CERT_PATH:Ljava/lang/String;

.field private CA_CERT_SYSTEM_PATH:Ljava/lang/String;

.field private final DEBUG_MODE:Z

.field private DEBUG_MODE_FOR_DEVELOPMENT:Z

.field private EE_CERT_FILE:Ljava/lang/String;

.field private final EM_SUPPORT_PACKAGE_FILE:Ljava/lang/String;

.field private final PROPERTY_ADP_POLICY_VERSION:Ljava/lang/String;

.field private final PROPERTY_ADP_VERSION:Ljava/lang/String;

.field private final PROPERTY_ASKS_POLICY_VERSION:Ljava/lang/String;

.field private final PROPERTY_ASKS_RUFS_ENABLE:Ljava/lang/String;

.field private final PROPERTY_ASKS_TIME_VALUE:Ljava/lang/String;

.field private final PROPERTY_ASKS_VERSION:Ljava/lang/String;

.field private final PROTECTION_LIST:I

.field private final RESTRICTED_FROM_POLICY:Ljava/lang/String;

.field private final RESTRICTED_FROM_TOKEN:Ljava/lang/String;

.field private ROOT_CERT_FILE:Ljava/lang/String;

.field private final SAMSUNG_ANALYTICS_LOG_FILE:Ljava/lang/String;

.field private final SECURE_TIME_FILE:Ljava/lang/String;

.field private final TAG_AASA:Ljava/lang/String;

.field private final TAG_ADP:Ljava/lang/String;

.field private final TAG_DELETABLE:Ljava/lang/String;

.field private final TAG_EM:Ljava/lang/String;

.field private final TAG_RESTRICTED:Ljava/lang/String;

.field private final TAG_RUFS:Ljava/lang/String;

.field private final TAG_SECURETIME:Ljava/lang/String;

.field private TYPE_MOBILE:I

.field private TYPE_NOT_CONNECTED:I

.field private TYPE_WIFI:I

.field private isFirstTime:Z

.field private final mASKSStates:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/asks/ASKSManagerService$ASKSState;",
            ">;"
        }
    .end annotation
.end field

.field final mContext:Landroid/content/Context;

.field mFile:Landroid/util/AtomicFile;

.field private mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field private final mSessions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/asks/ASKSManagerService$ASKSSession;",
            ">;"
        }
    .end annotation
.end field

.field volatile mSystemReady:Z

.field private final mUserVaultName:Ljava/lang/String;

.field private mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 110
    const-string v0, "00000000"

    sput-object v0, Lcom/android/server/asks/ASKSManagerService;->mASKSPolicyVersion:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;

    .line 200
    invoke-direct {p0}, Landroid/content/pm/IASKSManager$Stub;-><init>()V

    .line 112
    const-string v0, "3.0"

    iput-object v0, p0, Lcom/android/server/asks/ASKSManagerService;->ADP_VERSION:Ljava/lang/String;

    .line 113
    const-string v1, "20191001"

    iput-object v1, p0, Lcom/android/server/asks/ASKSManagerService;->ADP_POLICY_VERSION:Ljava/lang/String;

    .line 118
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/asks/ASKSManagerService;->mASKSStates:Ljava/util/HashMap;

    .line 119
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/asks/ASKSManagerService;->mSessions:Ljava/util/HashMap;

    .line 121
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/asks/ASKSManagerService;->isFirstTime:Z

    .line 129
    const-string v3, "AASA_ASKSManager"

    iput-object v3, p0, Lcom/android/server/asks/ASKSManagerService;->TAG_AASA:Ljava/lang/String;

    .line 130
    const-string v3, "AASA_ASKSManager_ADP"

    iput-object v3, p0, Lcom/android/server/asks/ASKSManagerService;->TAG_ADP:Ljava/lang/String;

    .line 131
    const-string v3, "AASA_ASKSManager_DELETABLE"

    iput-object v3, p0, Lcom/android/server/asks/ASKSManagerService;->TAG_DELETABLE:Ljava/lang/String;

    .line 132
    const-string v3, "AASA_ASKSManager_EM"

    iput-object v3, p0, Lcom/android/server/asks/ASKSManagerService;->TAG_EM:Ljava/lang/String;

    .line 133
    const-string v3, "AASA_ASKSManager_RESTRICTED"

    iput-object v3, p0, Lcom/android/server/asks/ASKSManagerService;->TAG_RESTRICTED:Ljava/lang/String;

    .line 134
    const-string v3, "AASA_ASKSManager_RUFS"

    iput-object v3, p0, Lcom/android/server/asks/ASKSManagerService;->TAG_RUFS:Ljava/lang/String;

    .line 135
    const-string v3, "AASA_ASKSManager_SECURETIME"

    iput-object v3, p0, Lcom/android/server/asks/ASKSManagerService;->TAG_SECURETIME:Ljava/lang/String;

    .line 137
    const-string v3, "AASA"

    iput-object v3, p0, Lcom/android/server/asks/ASKSManagerService;->mUserVaultName:Ljava/lang/String;

    .line 143
    const/16 v3, 0x9

    iput v3, p0, Lcom/android/server/asks/ASKSManagerService;->ASKS_BLACK:I

    .line 144
    const/16 v3, 0xa

    iput v3, p0, Lcom/android/server/asks/ASKSManagerService;->ASKS_KNOWN:I

    .line 146
    const/16 v3, 0xc

    iput v3, p0, Lcom/android/server/asks/ASKSManagerService;->ASKS_TRUSTEDSTORE:I

    .line 147
    const/16 v3, 0xe

    iput v3, p0, Lcom/android/server/asks/ASKSManagerService;->ASKS_CRL:I

    .line 148
    const/16 v3, 0xf

    iput v3, p0, Lcom/android/server/asks/ASKSManagerService;->ASKS_CERTSTORE:I

    .line 151
    const/16 v3, 0x12

    iput v3, p0, Lcom/android/server/asks/ASKSManagerService;->ASKS_HALFBLACK:I

    .line 152
    const/16 v3, 0x13

    iput v3, p0, Lcom/android/server/asks/ASKSManagerService;->PROTECTION_LIST:I

    .line 154
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/server/asks/ASKSManagerService;->AASA_CASE:I

    .line 155
    iput v2, p0, Lcom/android/server/asks/ASKSManagerService;->ASKS_CASE:I

    .line 156
    const/4 v4, 0x2

    iput v4, p0, Lcom/android/server/asks/ASKSManagerService;->ADP_CASE:I

    .line 158
    const-string v5, "/system/etc/ASKS_ROOT_1.crt"

    iput-object v5, p0, Lcom/android/server/asks/ASKSManagerService;->ROOT_CERT_FILE:Ljava/lang/String;

    .line 159
    const-string v5, "/data/system/.aasa/AASApolicy/ASKS_INTER_"

    iput-object v5, p0, Lcom/android/server/asks/ASKSManagerService;->CA_CERT_PATH:Ljava/lang/String;

    .line 160
    const-string v5, "/system/etc/ASKS_INTER_"

    iput-object v5, p0, Lcom/android/server/asks/ASKSManagerService;->CA_CERT_SYSTEM_PATH:Ljava/lang/String;

    .line 161
    const-string v5, "/system/etc/ASKS_EDGE_1.crt"

    iput-object v5, p0, Lcom/android/server/asks/ASKSManagerService;->EE_CERT_FILE:Ljava/lang/String;

    .line 163
    const-string v5, "/data/system/.aasa/asks.xml"

    iput-object v5, p0, Lcom/android/server/asks/ASKSManagerService;->ASKS_FILE:Ljava/lang/String;

    .line 164
    const-string v6, "/data/system/.aasa/EMSupportPackages.xml"

    iput-object v6, p0, Lcom/android/server/asks/ASKSManagerService;->EM_SUPPORT_PACKAGE_FILE:Ljava/lang/String;

    .line 165
    const-string v6, "/data/system/.aasa/trustedTime"

    iput-object v6, p0, Lcom/android/server/asks/ASKSManagerService;->SECURE_TIME_FILE:Ljava/lang/String;

    .line 166
    const-string v6, "/data/system/.aasa/SamsungAnalyticsLog"

    iput-object v6, p0, Lcom/android/server/asks/ASKSManagerService;->SAMSUNG_ANALYTICS_LOG_FILE:Ljava/lang/String;

    .line 168
    iput v2, p0, Lcom/android/server/asks/ASKSManagerService;->TYPE_WIFI:I

    .line 169
    iput v4, p0, Lcom/android/server/asks/ASKSManagerService;->TYPE_MOBILE:I

    .line 170
    iput v3, p0, Lcom/android/server/asks/ASKSManagerService;->TYPE_NOT_CONNECTED:I

    .line 172
    const-string/jumbo v2, "security.ASKS.version"

    iput-object v2, p0, Lcom/android/server/asks/ASKSManagerService;->PROPERTY_ASKS_VERSION:Ljava/lang/String;

    .line 173
    const-string/jumbo v4, "security.ASKS.time_value"

    iput-object v4, p0, Lcom/android/server/asks/ASKSManagerService;->PROPERTY_ASKS_TIME_VALUE:Ljava/lang/String;

    .line 174
    const-string/jumbo v6, "security.ASKS.policy_version"

    iput-object v6, p0, Lcom/android/server/asks/ASKSManagerService;->PROPERTY_ASKS_POLICY_VERSION:Ljava/lang/String;

    .line 175
    const-string/jumbo v7, "security.ADP.version"

    iput-object v7, p0, Lcom/android/server/asks/ASKSManagerService;->PROPERTY_ADP_VERSION:Ljava/lang/String;

    .line 176
    const-string/jumbo v8, "security.ADP.policy_version"

    iput-object v8, p0, Lcom/android/server/asks/ASKSManagerService;->PROPERTY_ADP_POLICY_VERSION:Ljava/lang/String;

    .line 177
    const-string/jumbo v9, "security.ASKS.rufs_enable"

    iput-object v9, p0, Lcom/android/server/asks/ASKSManagerService;->PROPERTY_ASKS_RUFS_ENABLE:Ljava/lang/String;

    .line 179
    const-string v9, "Token"

    iput-object v9, p0, Lcom/android/server/asks/ASKSManagerService;->RESTRICTED_FROM_TOKEN:Ljava/lang/String;

    .line 180
    const-string v9, "Policy"

    iput-object v9, p0, Lcom/android/server/asks/ASKSManagerService;->RESTRICTED_FROM_POLICY:Ljava/lang/String;

    .line 184
    iput-boolean v3, p0, Lcom/android/server/asks/ASKSManagerService;->DEBUG_MODE:Z

    .line 185
    iput-boolean v3, p0, Lcom/android/server/asks/ASKSManagerService;->DEBUG_MODE_FOR_DEVELOPMENT:Z

    .line 202
    iput-object p1, p0, Lcom/android/server/asks/ASKSManagerService;->mContext:Landroid/content/Context;

    .line 204
    const-string v3, "4.0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    const-string v2, "00000000"

    invoke-static {v4, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    sget-object v2, Lcom/android/server/asks/ASKSManagerService;->mASKSPolicyVersion:Ljava/lang/String;

    invoke-static {v6, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    invoke-static {v7, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    invoke-static {v8, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 214
    .local v0, "storageFile":Ljava/io/File;
    const/4 v1, 0x0

    .line 216
    .local v1, "isEdit":Z
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_105

    .line 218
    :try_start_d3
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_ea

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_ea

    .line 219
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    .line 222
    :cond_ea
    new-instance v2, Lcom/android/server/asks/PolicyConvert;

    invoke-direct {v2}, Lcom/android/server/asks/PolicyConvert;-><init>()V

    .line 223
    .local v2, "policy":Lcom/android/server/asks/PolicyConvert;
    sget-object v3, Lcom/android/server/asks/ASKSManagerService;->mASKSPolicyVersion:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/server/asks/PolicyConvert;->convert(Ljava/lang/String;)Z

    move-result v3

    .line 224
    .local v3, "isCreated":Z
    if-nez v3, :cond_fb

    .line 225
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_fa
    .catch Ljava/io/IOException; {:try_start_d3 .. :try_end_fa} :catch_fc

    .line 226
    const/4 v1, 0x1

    .line 231
    .end local v2    # "policy":Lcom/android/server/asks/PolicyConvert;
    .end local v3    # "isCreated":Z
    :cond_fb
    goto :goto_105

    .line 229
    :catch_fc
    move-exception v2

    .line 230
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "cannot create the file even it does not exist"

    invoke-direct {v3, v4, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 234
    .end local v2    # "e":Ljava/io/IOException;
    :cond_105
    :goto_105
    new-instance v2, Landroid/util/AtomicFile;

    const-string v3, "asks"

    invoke-direct {v2, v0, v3}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/asks/ASKSManagerService;->mFile:Landroid/util/AtomicFile;

    .line 235
    invoke-direct {p0}, Lcom/android/server/asks/ASKSManagerService;->readState()V

    .line 237
    invoke-direct {p0}, Lcom/android/server/asks/ASKSManagerService;->copyASKSpolicyFromSystem()Z

    move-result v2

    if-eqz v2, :cond_11c

    .line 238
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/server/asks/ASKSManagerService;->updateRestrictRule(Lcom/android/server/asks/ASKSManagerService$ASKSSession;)Z

    .line 239
    const/4 v1, 0x1

    .line 242
    :cond_11c
    if-eqz v1, :cond_121

    .line 243
    invoke-direct {p0}, Lcom/android/server/asks/ASKSManagerService;->writeState()V

    .line 247
    :cond_121
    invoke-direct {p0}, Lcom/android/server/asks/ASKSManagerService;->updateRestrictedTargetPackages()V

    .line 248
    return-void
.end method

.method private checkASKSFileIntegrity()V
    .registers 10

    .line 3436
    const/4 v0, 0x0

    .line 3438
    .local v0, "fileHash":[B
    :try_start_1
    const-string v1, "/data/system/.aasa/asks.xml"

    invoke-direct {p0, v1}, Lcom/android/server/asks/ASKSManagerService;->getApkFileHashBytes(Ljava/lang/String;)[B

    move-result-object v1
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_7} :catch_9

    move-object v0, v1

    .line 3440
    goto :goto_a

    .line 3439
    :catch_9
    move-exception v1

    .line 3442
    :goto_a
    const-string v1, "failed to get file hash"

    const-string v2, "AASA_ASKSManager"

    const-string/jumbo v3, "null"

    const-string/jumbo v4, "ro.product.model"

    const/16 v5, 0x7b

    if-eqz v0, :cond_b7

    .line 3444
    invoke-direct {p0}, Lcom/android/server/asks/ASKSManagerService;->getVaultKeeperManager()Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    move-result-object v6

    if-eqz v6, :cond_a8

    .line 3446
    invoke-direct {p0}, Lcom/android/server/asks/ASKSManagerService;->getVaultKeeperManager()Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    move-result-object v6

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->read(I)[B

    move-result-object v6

    .line 3447
    .local v6, "vaultHash":[B
    invoke-direct {p0}, Lcom/android/server/asks/ASKSManagerService;->getVaultKeeperManager()Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->getErrorCode()I

    move-result v7

    .line 3448
    .local v7, "result":I
    if-nez v7, :cond_85

    .line 3450
    invoke-static {v0, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_a7

    .line 3452
    invoke-static {v4, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HAVE_DIFFERENT_HASH_VAULES_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v6}, Lcom/android/server/asks/ASKSManagerService;->convertToHex([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Lcom/android/server/asks/ASKSManagerService;->convertToHex([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v5, v1, v3}, Lcom/android/server/asks/ASKSManagerService;->setSamsungAnalyticsLog(ILjava/lang/String;Ljava/lang/String;)V

    .line 3453
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to get file hash "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v6}, Lcom/android/server/asks/ASKSManagerService;->convertToHex([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Lcom/android/server/asks/ASKSManagerService;->convertToHex([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3455
    invoke-direct {p0, v0}, Lcom/android/server/asks/ASKSManagerService;->writeASKSFileIntegrity([B)V

    goto :goto_a7

    .line 3459
    :cond_85
    invoke-static {v4, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "VAULT_KEEPER_READ_FAILED_"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v5, v3, v4}, Lcom/android/server/asks/ASKSManagerService;->setSamsungAnalyticsLog(ILjava/lang/String;Ljava/lang/String;)V

    .line 3460
    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3462
    invoke-direct {p0, v0}, Lcom/android/server/asks/ASKSManagerService;->writeASKSFileIntegrity([B)V

    .line 3464
    .end local v6    # "vaultHash":[B
    .end local v7    # "result":I
    :cond_a7
    :goto_a7
    goto :goto_c3

    .line 3466
    :cond_a8
    invoke-static {v4, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "GET_VAULT_KEEPER_FAILED"

    invoke-direct {p0, v5, v1, v3}, Lcom/android/server/asks/ASKSManagerService;->setSamsungAnalyticsLog(ILjava/lang/String;Ljava/lang/String;)V

    .line 3467
    const-string v1, "failed to get vault service"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c3

    .line 3471
    :cond_b7
    invoke-static {v4, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "CANNOT_GET_FILE_HASH"

    invoke-direct {p0, v5, v3, v4}, Lcom/android/server/asks/ASKSManagerService;->setSamsungAnalyticsLog(ILjava/lang/String;Ljava/lang/String;)V

    .line 3472
    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3474
    :goto_c3
    return-void
.end method

.method private checkCertificateChaining(Lcom/android/server/asks/ASKSManagerService$ASKSSession;[BLjava/security/cert/X509Certificate;)[B
    .registers 14
    .param p1, "session"    # Lcom/android/server/asks/ASKSManagerService$ASKSSession;
    .param p2, "contents"    # [B
    .param p3, "signerCert"    # Ljava/security/cert/X509Certificate;

    .line 2152
    const-string v0, ".crt"

    const-string v1, "22"

    const-string v2, "AASA_ASKSManager"

    iget-boolean v3, p0, Lcom/android/server/asks/ASKSManagerService;->DEBUG_MODE_FOR_DEVELOPMENT:Z

    if-eqz v3, :cond_b

    return-object p2

    .line 2154
    :cond_b
    const-string v3, ""

    .line 2156
    .local v3, "local_CACertName":Ljava/lang/String;
    const/4 v4, 0x0

    .line 2157
    .local v4, "certificate":Ljava/io/InputStream;
    const/4 v5, 0x0

    .line 2159
    .local v5, "CAcert":Ljava/security/cert/X509Certificate;
    :try_start_f
    const-string/jumbo v6, "x.509"

    invoke-static {v6}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v6
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_16} :catch_105

    .line 2162
    .local v6, "certfactory":Ljava/security/cert/CertificateFactory;
    :try_start_16
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/server/asks/ASKSManagerService;->CA_CERT_PATH:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->getCAKeyIndex()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v3, v7

    .line 2163
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v4, v7

    .line 2164
    invoke-virtual {v6, v4}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v7

    check-cast v7, Ljava/security/cert/X509Certificate;
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_3b} :catch_3e

    move-object v0, v7

    .line 2170
    .end local v5    # "CAcert":Ljava/security/cert/X509Certificate;
    .local v0, "CAcert":Ljava/security/cert/X509Certificate;
    move-object v5, v0

    goto :goto_79

    .line 2165
    .end local v0    # "CAcert":Ljava/security/cert/X509Certificate;
    .restart local v5    # "CAcert":Ljava/security/cert/X509Certificate;
    :catch_3e
    move-exception v7

    .line 2166
    .local v7, "e":Ljava/lang/Exception;
    :try_start_3f
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Look at system File. "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2167
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/android/server/asks/ASKSManagerService;->CA_CERT_SYSTEM_PATH:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->getCAKeyIndex()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    .line 2168
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v4, v0

    .line 2169
    invoke-virtual {v6, v4}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_78} :catch_105

    move-object v5, v0

    .line 2172
    .end local v7    # "e":Ljava/lang/Exception;
    :goto_79
    :try_start_79
    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V

    .line 2173
    const-string/jumbo v0, "signerCert is verificated!"

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_86} :catch_eb

    .line 2178
    nop

    .line 2181
    nop

    .line 2182
    :try_start_88
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 2183
    const/4 v4, 0x0

    .line 2186
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v7, p0, Lcom/android/server/asks/ASKSManagerService;->ROOT_CERT_FILE:Ljava/lang/String;

    invoke-direct {v0, v7}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_93
    .catch Ljava/lang/Exception; {:try_start_88 .. :try_end_93} :catch_105

    move-object v4, v0

    .line 2187
    const/4 v0, 0x0

    .line 2189
    .local v0, "rootCert":Ljava/security/cert/X509Certificate;
    :try_start_95
    invoke-virtual {v6, v4}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v7

    check-cast v7, Ljava/security/cert/X509Certificate;

    move-object v0, v7

    .line 2190
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V

    .line 2191
    const-string v7, "CAcert is verificated!"

    invoke-static {v2, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a8
    .catch Ljava/lang/Exception; {:try_start_95 .. :try_end_a8} :catch_d1

    .line 2195
    nop

    .line 2199
    :try_start_a9
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V

    .line 2200
    const-string/jumbo v7, "rootCert is verificated!"

    invoke-static {v2, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b6
    .catch Ljava/lang/Exception; {:try_start_a9 .. :try_end_b6} :catch_b7

    .line 2201
    return-object p2

    .line 2202
    :catch_b7
    move-exception v7

    .line 2203
    .restart local v7    # "e":Ljava/lang/Exception;
    :try_start_b8
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ERROR: rootCert is not verified "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2204
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    return-object v1

    .line 2192
    .end local v7    # "e":Ljava/lang/Exception;
    :catch_d1
    move-exception v7

    .line 2193
    .restart local v7    # "e":Ljava/lang/Exception;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ERROR: CACert is not verified by RootCert "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2194
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    return-object v1

    .line 2174
    .end local v0    # "rootCert":Ljava/security/cert/X509Certificate;
    .end local v7    # "e":Ljava/lang/Exception;
    :catch_eb
    move-exception v0

    .line 2175
    .local v0, "e":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ERROR: SignerCert is not verified by CACert "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2177
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1
    :try_end_104
    .catch Ljava/lang/Exception; {:try_start_b8 .. :try_end_104} :catch_105

    return-object v1

    .line 2206
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v6    # "certfactory":Ljava/security/cert/CertificateFactory;
    :catch_105
    move-exception v0

    .line 2207
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v6, "Token is NOT verificated in CheckCRL!"

    invoke-static {v2, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2208
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    return-object v1
.end method

.method private checkIntegrityNew(Lcom/android/server/asks/ASKSManagerService$ASKSSession;I[B)[B
    .registers 22
    .param p1, "session"    # Lcom/android/server/asks/ASKSManagerService$ASKSSession;
    .param p2, "mode"    # I
    .param p3, "contents"    # [B

    .line 1950
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    const-string v5, "AASA_ASKSManager"

    const/16 v6, 0x200

    .line 1951
    .local v6, "keySize":I
    const/4 v7, 0x0

    .line 1952
    .local v7, "tokenFile":Landroid/util/jar/StrictJarFile;
    const/4 v8, 0x0

    .line 1954
    .local v8, "fis":Ljava/io/InputStream;
    const/4 v9, 0x0

    .line 1957
    .local v9, "mTokenContents":[B
    array-length v0, v4

    const-string v10, "22"

    if-ge v0, v6, :cond_19

    .line 1958
    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0

    .line 1962
    :cond_19
    :try_start_19
    new-array v0, v6, [B

    move-object v11, v0

    .line 1963
    .local v11, "signData":[B
    const/4 v0, 0x0

    invoke-static {v4, v0, v11, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1965
    invoke-direct {v1, v4, v6}, Lcom/android/server/asks/ASKSManagerService;->getTokenContents([BI)[B

    move-result-object v12

    move-object v9, v12

    .line 1966
    if-eqz v9, :cond_158

    array-length v12, v9

    const/4 v13, 0x1

    if-ne v12, v13, :cond_2f

    move/from16 v17, v6

    goto/16 :goto_15a

    .line 1969
    :cond_2f
    const-string v12, "SHA256WithRSAEncryption"

    invoke-static {v12}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v12

    .line 1970
    .local v12, "signature":Ljava/security/Signature;
    const-string/jumbo v14, "x.509"

    invoke-static {v14}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v14
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_3c} :catch_16f
    .catchall {:try_start_19 .. :try_end_3c} :catchall_16a

    .line 1971
    .local v14, "certfactory":Ljava/security/cert/CertificateFactory;
    const/4 v15, 0x0

    .line 1974
    .local v15, "signerCert":Ljava/security/cert/X509Certificate;
    const/4 v0, 0x2

    if-eq v3, v13, :cond_93

    if-eq v3, v0, :cond_46

    move/from16 v17, v6

    goto/16 :goto_ca

    .line 2005
    :cond_46
    :try_start_46
    new-instance v0, Ljava/io/File;

    iget-object v13, v1, Lcom/android/server/asks/ASKSManagerService;->EE_CERT_FILE:Ljava/lang/String;

    invoke-direct {v0, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_78

    .line 2007
    new-instance v0, Ljava/io/FileInputStream;

    new-instance v13, Ljava/io/File;

    iget-object v4, v1, Lcom/android/server/asks/ASKSManagerService;->EE_CERT_FILE:Ljava/lang/String;

    invoke-direct {v13, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v13}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v8, v0

    .line 2011
    invoke-direct {v1, v2, v9}, Lcom/android/server/asks/ASKSManagerService;->findCertificateIndex(Lcom/android/server/asks/ASKSManagerService$ASKSSession;[B)[B

    move-result-object v0
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_64} :catch_8e
    .catchall {:try_start_46 .. :try_end_64} :catchall_88

    move-object v4, v0

    .line 2013
    .local v4, "ret":[B
    if-eqz v4, :cond_75

    .line 2014
    nop

    .line 2047
    if-eqz v7, :cond_70

    .line 2048
    :try_start_6a
    invoke-virtual {v7}, Landroid/util/jar/StrictJarFile;->close()V

    goto :goto_70

    .line 2051
    :catch_6e
    move-exception v0

    goto :goto_74

    .line 2049
    :cond_70
    :goto_70
    nop

    .line 2050
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_74
    .catch Ljava/io/IOException; {:try_start_6a .. :try_end_74} :catch_6e

    .line 2014
    :goto_74
    return-object v4

    .line 2013
    :cond_75
    move/from16 v17, v6

    goto :goto_ca

    .line 2009
    .end local v4    # "ret":[B
    :cond_78
    const/4 v4, 0x0

    .line 2047
    if-eqz v7, :cond_81

    .line 2048
    :try_start_7b
    invoke-virtual {v7}, Landroid/util/jar/StrictJarFile;->close()V

    goto :goto_81

    .line 2051
    :catch_7f
    move-exception v0

    goto :goto_87

    .line 2049
    :cond_81
    :goto_81
    if-eqz v8, :cond_86

    .line 2050
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_86
    .catch Ljava/io/IOException; {:try_start_7b .. :try_end_86} :catch_7f

    .line 2052
    :cond_86
    nop

    .line 2009
    :goto_87
    return-object v4

    .line 2046
    .end local v11    # "signData":[B
    .end local v12    # "signature":Ljava/security/Signature;
    .end local v14    # "certfactory":Ljava/security/cert/CertificateFactory;
    .end local v15    # "signerCert":Ljava/security/cert/X509Certificate;
    :catchall_88
    move-exception v0

    move-object v4, v0

    move/from16 v17, v6

    goto/16 :goto_19c

    .line 2042
    :catch_8e
    move-exception v0

    move/from16 v17, v6

    goto/16 :goto_172

    .line 1980
    .restart local v11    # "signData":[B
    .restart local v12    # "signature":Ljava/security/Signature;
    .restart local v14    # "certfactory":Ljava/security/cert/CertificateFactory;
    .restart local v15    # "signerCert":Ljava/security/cert/X509Certificate;
    :cond_93
    const/4 v0, 0x0

    .line 1981
    .local v0, "certEntry":Ljava/util/zip/ZipEntry;
    :try_start_94
    new-instance v4, Landroid/util/jar/StrictJarFile;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->getCodePath()Ljava/lang/String;

    move-result-object v13
    :try_end_9a
    .catch Ljava/lang/Exception; {:try_start_94 .. :try_end_9a} :catch_16f
    .catchall {:try_start_94 .. :try_end_9a} :catchall_16a

    move-object/from16 v16, v0

    move/from16 v17, v6

    const/4 v0, 0x1

    const/4 v6, 0x0

    .end local v0    # "certEntry":Ljava/util/zip/ZipEntry;
    .end local v6    # "keySize":I
    .local v16, "certEntry":Ljava/util/zip/ZipEntry;
    .local v17, "keySize":I
    :try_start_a0
    invoke-direct {v4, v13, v6, v0}, Landroid/util/jar/StrictJarFile;-><init>(Ljava/lang/String;ZZ)V

    move-object v7, v4

    .line 1982
    nop

    .line 1984
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->getCertName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/util/jar/StrictJarFile;->findEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    move-object v4, v0

    .line 1985
    .end local v16    # "certEntry":Ljava/util/zip/ZipEntry;
    .local v4, "certEntry":Ljava/util/zip/ZipEntry;
    if-eqz v4, :cond_13d

    .line 1986
    invoke-virtual {v7, v4}, Landroid/util/jar/StrictJarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v0

    move-object v8, v0

    .line 1996
    invoke-direct {v1, v2, v9}, Lcom/android/server/asks/ASKSManagerService;->findCertificateIndex(Lcom/android/server/asks/ASKSManagerService$ASKSSession;[B)[B

    move-result-object v0
    :try_end_b9
    .catch Ljava/lang/Exception; {:try_start_a0 .. :try_end_b9} :catch_13b
    .catchall {:try_start_a0 .. :try_end_b9} :catchall_19a

    move-object v6, v0

    .line 1998
    .local v6, "ret":[B
    if-eqz v6, :cond_c9

    .line 1999
    nop

    .line 2047
    nop

    .line 2048
    :try_start_be
    invoke-virtual {v7}, Landroid/util/jar/StrictJarFile;->close()V

    .line 2049
    if-eqz v8, :cond_c6

    .line 2050
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_c6
    .catch Ljava/io/IOException; {:try_start_be .. :try_end_c6} :catch_c7

    .line 2052
    :cond_c6
    goto :goto_c8

    .line 2051
    :catch_c7
    move-exception v0

    .line 1999
    :goto_c8
    return-object v6

    .line 2001
    .end local v4    # "certEntry":Ljava/util/zip/ZipEntry;
    .end local v6    # "ret":[B
    :cond_c9
    nop

    .line 2018
    :goto_ca
    :try_start_ca
    invoke-virtual {v14, v8}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    move-object v4, v0

    .line 2020
    .end local v15    # "signerCert":Ljava/security/cert/X509Certificate;
    .local v4, "signerCert":Ljava/security/cert/X509Certificate;
    if-eqz v7, :cond_d6

    .line 2021
    invoke-virtual {v7}, Landroid/util/jar/StrictJarFile;->close()V

    .line 2022
    :cond_d6
    if-eqz v8, :cond_db

    .line 2023
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 2025
    :cond_db
    invoke-virtual {v12, v4}, Ljava/security/Signature;->initVerify(Ljava/security/cert/Certificate;)V

    .line 2026
    array-length v0, v9

    const/4 v6, 0x0

    invoke-virtual {v12, v9, v6, v0}, Ljava/security/Signature;->update([BII)V

    .line 2028
    invoke-virtual {v12, v11}, Ljava/security/Signature;->verify([B)Z

    move-result v0

    if-nez v0, :cond_106

    iget-boolean v0, v1, Lcom/android/server/asks/ASKSManagerService;->DEBUG_MODE_FOR_DEVELOPMENT:Z

    if-eqz v0, :cond_ee

    goto :goto_106

    .line 2039
    :cond_ee
    const-string v0, "Token is NOT verificated in checkIntegrity!"

    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2040
    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v5
    :try_end_f7
    .catch Ljava/lang/Exception; {:try_start_ca .. :try_end_f7} :catch_13b
    .catchall {:try_start_ca .. :try_end_f7} :catchall_19a

    .line 2047
    if-eqz v7, :cond_ff

    .line 2048
    :try_start_f9
    invoke-virtual {v7}, Landroid/util/jar/StrictJarFile;->close()V

    goto :goto_ff

    .line 2051
    :catch_fd
    move-exception v0

    goto :goto_105

    .line 2049
    :cond_ff
    :goto_ff
    if-eqz v8, :cond_104

    .line 2050
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_104
    .catch Ljava/io/IOException; {:try_start_f9 .. :try_end_104} :catch_fd

    .line 2052
    :cond_104
    nop

    .line 2040
    :goto_105
    return-object v5

    .line 2030
    :cond_106
    :goto_106
    const/4 v0, 0x1

    if-eq v3, v0, :cond_128

    const/4 v0, 0x2

    if-eq v3, v0, :cond_128

    .line 2036
    nop

    .line 2047
    .end local v4    # "signerCert":Ljava/security/cert/X509Certificate;
    .end local v11    # "signData":[B
    .end local v12    # "signature":Ljava/security/Signature;
    .end local v14    # "certfactory":Ljava/security/cert/CertificateFactory;
    if-eqz v7, :cond_115

    .line 2048
    :try_start_10f
    invoke-virtual {v7}, Landroid/util/jar/StrictJarFile;->close()V

    goto :goto_115

    .line 2051
    :catch_113
    move-exception v0

    goto :goto_11b

    .line 2049
    :cond_115
    :goto_115
    if-eqz v8, :cond_11c

    .line 2050
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_11a
    .catch Ljava/io/IOException; {:try_start_10f .. :try_end_11a} :catch_113

    goto :goto_11c

    .line 2053
    :goto_11b
    goto :goto_11d

    .line 2052
    :cond_11c
    :goto_11c
    nop

    .line 2054
    :goto_11d
    const-string/jumbo v0, "this is not on the way to check integrity"

    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2055
    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0

    .line 2036
    .restart local v4    # "signerCert":Ljava/security/cert/X509Certificate;
    .restart local v11    # "signData":[B
    .restart local v12    # "signature":Ljava/security/Signature;
    .restart local v14    # "certfactory":Ljava/security/cert/CertificateFactory;
    :cond_128
    :try_start_128
    invoke-direct {v1, v2, v9, v4}, Lcom/android/server/asks/ASKSManagerService;->checkCertificateChaining(Lcom/android/server/asks/ASKSManagerService$ASKSSession;[BLjava/security/cert/X509Certificate;)[B

    move-result-object v5
    :try_end_12c
    .catch Ljava/lang/Exception; {:try_start_128 .. :try_end_12c} :catch_13b
    .catchall {:try_start_128 .. :try_end_12c} :catchall_19a

    .line 2047
    if-eqz v7, :cond_134

    .line 2048
    :try_start_12e
    invoke-virtual {v7}, Landroid/util/jar/StrictJarFile;->close()V

    goto :goto_134

    .line 2051
    :catch_132
    move-exception v0

    goto :goto_13a

    .line 2049
    :cond_134
    :goto_134
    if-eqz v8, :cond_139

    .line 2050
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_139
    .catch Ljava/io/IOException; {:try_start_12e .. :try_end_139} :catch_132

    .line 2052
    :cond_139
    nop

    .line 2036
    :goto_13a
    return-object v5

    .line 2042
    .end local v4    # "signerCert":Ljava/security/cert/X509Certificate;
    .end local v11    # "signData":[B
    .end local v12    # "signature":Ljava/security/Signature;
    .end local v14    # "certfactory":Ljava/security/cert/CertificateFactory;
    :catch_13b
    move-exception v0

    goto :goto_172

    .line 1988
    .local v4, "certEntry":Ljava/util/zip/ZipEntry;
    .restart local v11    # "signData":[B
    .restart local v12    # "signature":Ljava/security/Signature;
    .restart local v14    # "certfactory":Ljava/security/cert/CertificateFactory;
    .restart local v15    # "signerCert":Ljava/security/cert/X509Certificate;
    :cond_13d
    :try_start_13d
    const-string v0, "Token Cert does not exist!"

    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1990
    nop

    .line 1991
    invoke-virtual {v7}, Landroid/util/jar/StrictJarFile;->close()V

    .line 1993
    const-string v0, "21"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v5
    :try_end_14c
    .catch Ljava/lang/Exception; {:try_start_13d .. :try_end_14c} :catch_13b
    .catchall {:try_start_13d .. :try_end_14c} :catchall_19a

    .line 2047
    nop

    .line 2048
    :try_start_14d
    invoke-virtual {v7}, Landroid/util/jar/StrictJarFile;->close()V

    .line 2049
    if-eqz v8, :cond_155

    .line 2050
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_155
    .catch Ljava/io/IOException; {:try_start_14d .. :try_end_155} :catch_156

    .line 2052
    :cond_155
    goto :goto_157

    .line 2051
    :catch_156
    move-exception v0

    .line 1993
    :goto_157
    return-object v5

    .line 1966
    .end local v4    # "certEntry":Ljava/util/zip/ZipEntry;
    .end local v12    # "signature":Ljava/security/Signature;
    .end local v14    # "certfactory":Ljava/security/cert/CertificateFactory;
    .end local v15    # "signerCert":Ljava/security/cert/X509Certificate;
    .end local v17    # "keySize":I
    .local v6, "keySize":I
    :cond_158
    move/from16 v17, v6

    .line 1967
    .end local v6    # "keySize":I
    .restart local v17    # "keySize":I
    :goto_15a
    nop

    .line 2047
    if-eqz v7, :cond_163

    .line 2048
    :try_start_15d
    invoke-virtual {v7}, Landroid/util/jar/StrictJarFile;->close()V

    goto :goto_163

    .line 2051
    :catch_161
    move-exception v0

    goto :goto_169

    .line 2049
    :cond_163
    :goto_163
    if-eqz v8, :cond_168

    .line 2050
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_168
    .catch Ljava/io/IOException; {:try_start_15d .. :try_end_168} :catch_161

    .line 2052
    :cond_168
    nop

    .line 1967
    :goto_169
    return-object v9

    .line 2046
    .end local v11    # "signData":[B
    .end local v17    # "keySize":I
    .restart local v6    # "keySize":I
    :catchall_16a
    move-exception v0

    move/from16 v17, v6

    move-object v4, v0

    .end local v6    # "keySize":I
    .restart local v17    # "keySize":I
    goto :goto_19c

    .line 2042
    .end local v17    # "keySize":I
    .restart local v6    # "keySize":I
    :catch_16f
    move-exception v0

    move/from16 v17, v6

    .end local v6    # "keySize":I
    .restart local v17    # "keySize":I
    :goto_172
    move-object v4, v0

    .line 2043
    .local v4, "e":Ljava/lang/Exception;
    :try_start_173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ERROR: checkIntegrity "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2044
    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v5
    :try_end_18b
    .catchall {:try_start_173 .. :try_end_18b} :catchall_19a

    .line 2047
    if-eqz v7, :cond_193

    .line 2048
    :try_start_18d
    invoke-virtual {v7}, Landroid/util/jar/StrictJarFile;->close()V

    goto :goto_193

    .line 2051
    :catch_191
    move-exception v0

    goto :goto_199

    .line 2049
    :cond_193
    :goto_193
    if-eqz v8, :cond_198

    .line 2050
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_198
    .catch Ljava/io/IOException; {:try_start_18d .. :try_end_198} :catch_191

    .line 2052
    :cond_198
    nop

    .line 2044
    :goto_199
    return-object v5

    .line 2046
    .end local v4    # "e":Ljava/lang/Exception;
    :catchall_19a
    move-exception v0

    move-object v4, v0

    .line 2047
    :goto_19c
    if-eqz v7, :cond_1a4

    .line 2048
    :try_start_19e
    invoke-virtual {v7}, Landroid/util/jar/StrictJarFile;->close()V

    goto :goto_1a4

    .line 2051
    :catch_1a2
    move-exception v0

    goto :goto_1aa

    .line 2049
    :cond_1a4
    :goto_1a4
    if-eqz v8, :cond_1a9

    .line 2050
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_1a9
    .catch Ljava/io/IOException; {:try_start_19e .. :try_end_1a9} :catch_1a2

    .line 2052
    :cond_1a9
    nop

    .line 2053
    :goto_1aa
    throw v4
.end method

.method private checkListForASKS(ILjava/lang/String;Ljava/lang/String;)I
    .registers 8
    .param p1, "type"    # I
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "hash"    # Ljava/lang/String;

    .line 1215
    const/4 v0, -0x1

    .line 1217
    .local v0, "result":I
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1218
    .local v1, "checkList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1220
    .local v2, "hashList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0, p1, v1}, Lcom/android/server/asks/ASKSManagerService;->getASKSDataFromXML(ILjava/util/HashMap;)V

    .line 1221
    invoke-virtual {v1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_42

    .line 1222
    if-nez p3, :cond_18

    .line 1223
    const/4 v0, 0x0

    goto :goto_42

    .line 1225
    :cond_18
    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    check-cast v2, Ljava/util/ArrayList;

    .line 1226
    if-eqz v2, :cond_2b

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 1227
    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 1229
    :cond_2b
    const/16 v3, 0x9

    if-eq p1, v3, :cond_37

    const/16 v3, 0x12

    if-eq p1, v3, :cond_37

    const/16 v3, 0x13

    if-ne p1, v3, :cond_42

    .line 1230
    :cond_37
    if-eqz v2, :cond_42

    const-string v3, "ALL"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_42

    .line 1231
    const/4 v0, 0x0

    .line 1236
    :cond_42
    :goto_42
    return v0
.end method

.method private checkNetworkConnection(Landroid/content/Context;)I
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .line 3144
    const-string v0, "AASA_ASKSManager_SECURETIME"

    const-string v1, "checkNetworkConnection : "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3145
    if-nez p1, :cond_11

    .line 3146
    const-string v1, "context is null. "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3147
    iget v0, p0, Lcom/android/server/asks/ASKSManagerService;->TYPE_NOT_CONNECTED:I

    return v0

    .line 3149
    :cond_11
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 3151
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 3152
    .local v1, "activeNetwork":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_32

    .line 3153
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_29

    .line 3154
    iget v2, p0, Lcom/android/server/asks/ASKSManagerService;->TYPE_WIFI:I

    return v2

    .line 3156
    :cond_29
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-nez v2, :cond_32

    .line 3157
    iget v2, p0, Lcom/android/server/asks/ASKSManagerService;->TYPE_MOBILE:I

    return v2

    .line 3159
    :cond_32
    iget v2, p0, Lcom/android/server/asks/ASKSManagerService;->TYPE_NOT_CONNECTED:I

    return v2
.end method

.method private checkTokenTarget(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 13
    .param p1, "modelName"    # Ljava/lang/String;
    .param p2, "carrier"    # Ljava/lang/String;

    .line 2271
    const/4 v0, 0x0

    if-eqz p1, :cond_128

    if-nez p2, :cond_7

    goto/16 :goto_128

    .line 2276
    :cond_7
    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 2277
    .local v2, "rule_model":[Ljava/lang/String;
    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2279
    .local v1, "rule_carrier":[Ljava/lang/String;
    const-string/jumbo v3, "ro.product.model"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2280
    .local v3, "target_model":Ljava/lang/String;
    const-string/jumbo v4, "ro.csc.sales_code"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2282
    .local v4, "target_carrier":Ljava/lang/String;
    const/4 v5, 0x0

    .line 2284
    .local v5, "result":Z
    aget-object v6, v2, v0

    const-string v7, "ALL"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v8, 0x1

    if-eqz v6, :cond_c0

    .line 2285
    array-length v6, v2

    if-ne v6, v8, :cond_6d

    .line 2286
    aget-object v6, v1, v0

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_52

    .line 2287
    array-length v0, v1

    if-ne v0, v8, :cond_3c

    .line 2288
    const/4 v5, 0x1

    goto/16 :goto_127

    .line 2290
    :cond_3c
    const/4 v0, 0x1

    .line 2291
    .end local v5    # "result":Z
    .local v0, "result":Z
    const/4 v5, 0x1

    .local v5, "i":I
    :goto_3e
    array-length v6, v1

    if-ge v5, v6, :cond_4f

    .line 2292
    aget-object v6, v1, v5

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4c

    .line 2293
    const/4 v0, 0x0

    .line 2294
    move v5, v0

    goto :goto_50

    .line 2291
    :cond_4c
    add-int/lit8 v5, v5, 0x1

    goto :goto_3e

    :cond_4f
    move v5, v0

    .end local v0    # "result":Z
    .local v5, "result":Z
    :goto_50
    goto/16 :goto_127

    .line 2298
    :cond_52
    aget-object v0, v1, v0

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_127

    .line 2299
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5b
    array-length v6, v1

    if-ge v0, v6, :cond_6b

    .line 2300
    aget-object v6, v1, v0

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_68

    .line 2301
    const/4 v5, 0x1

    .line 2302
    goto :goto_6b

    .line 2299
    :cond_68
    add-int/lit8 v0, v0, 0x1

    goto :goto_5b

    .end local v0    # "i":I
    :cond_6b
    :goto_6b
    goto/16 :goto_127

    .line 2307
    :cond_6d
    const/4 v5, 0x1

    .line 2310
    const/4 v6, 0x1

    .local v6, "i":I
    :goto_6f
    array-length v9, v2

    if-ge v6, v9, :cond_7f

    .line 2311
    aget-object v9, v2, v6

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7c

    .line 2312
    const/4 v5, 0x0

    .line 2313
    goto :goto_7f

    .line 2310
    :cond_7c
    add-int/lit8 v6, v6, 0x1

    goto :goto_6f

    .line 2317
    .end local v6    # "i":I
    :cond_7f
    :goto_7f
    if-ne v5, v8, :cond_127

    .line 2318
    aget-object v6, v1, v0

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a2

    .line 2319
    array-length v0, v1

    if-ne v0, v8, :cond_8f

    .line 2320
    const/4 v5, 0x1

    goto/16 :goto_127

    .line 2322
    :cond_8f
    const/4 v0, 0x1

    .restart local v0    # "i":I
    :goto_90
    array-length v6, v1

    if-ge v0, v6, :cond_a0

    .line 2323
    aget-object v6, v1, v0

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9d

    .line 2324
    const/4 v5, 0x0

    .line 2325
    goto :goto_a0

    .line 2322
    :cond_9d
    add-int/lit8 v0, v0, 0x1

    goto :goto_90

    .end local v0    # "i":I
    :cond_a0
    :goto_a0
    goto/16 :goto_127

    .line 2329
    :cond_a2
    aget-object v0, v1, v0

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_127

    .line 2330
    const/4 v0, 0x0

    .line 2331
    .end local v5    # "result":Z
    .local v0, "result":Z
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_ac
    array-length v6, v1

    if-ge v5, v6, :cond_bd

    .line 2332
    aget-object v6, v1, v5

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_ba

    .line 2333
    const/4 v0, 0x1

    .line 2334
    move v5, v0

    goto :goto_be

    .line 2331
    :cond_ba
    add-int/lit8 v5, v5, 0x1

    goto :goto_ac

    :cond_bd
    move v5, v0

    .end local v0    # "result":Z
    .local v5, "result":Z
    :goto_be
    goto/16 :goto_127

    .line 2340
    :cond_c0
    aget-object v6, v2, v0

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_127

    .line 2343
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_c9
    array-length v9, v2

    if-ge v6, v9, :cond_d9

    .line 2344
    aget-object v9, v2, v6

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d6

    .line 2345
    const/4 v5, 0x1

    .line 2346
    goto :goto_d9

    .line 2343
    :cond_d6
    add-int/lit8 v6, v6, 0x1

    goto :goto_c9

    .line 2350
    .end local v6    # "i":I
    :cond_d9
    :goto_d9
    if-ne v5, v8, :cond_127

    .line 2351
    aget-object v6, v1, v0

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10d

    .line 2352
    array-length v0, v1

    if-ne v0, v8, :cond_fb

    .line 2353
    const/4 v0, 0x0

    .line 2354
    .end local v5    # "result":Z
    .restart local v0    # "result":Z
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_e8
    array-length v6, v2

    if-ge v5, v6, :cond_f9

    .line 2355
    aget-object v6, v2, v5

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f6

    .line 2356
    const/4 v0, 0x1

    .line 2357
    move v5, v0

    goto :goto_fa

    .line 2354
    :cond_f6
    add-int/lit8 v5, v5, 0x1

    goto :goto_e8

    :cond_f9
    move v5, v0

    .end local v0    # "result":Z
    .local v5, "result":Z
    :goto_fa
    goto :goto_127

    .line 2361
    :cond_fb
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_fc
    array-length v6, v1

    if-ge v0, v6, :cond_10c

    .line 2362
    aget-object v6, v1, v0

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_109

    .line 2363
    const/4 v5, 0x0

    .line 2364
    goto :goto_10c

    .line 2361
    :cond_109
    add-int/lit8 v0, v0, 0x1

    goto :goto_fc

    .end local v0    # "i":I
    :cond_10c
    :goto_10c
    goto :goto_127

    .line 2368
    :cond_10d
    aget-object v0, v1, v0

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_127

    .line 2369
    const/4 v5, 0x0

    .line 2370
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_117
    array-length v6, v1

    if-ge v0, v6, :cond_127

    .line 2371
    aget-object v6, v1, v0

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_124

    .line 2372
    const/4 v5, 0x1

    .line 2373
    goto :goto_127

    .line 2370
    :cond_124
    add-int/lit8 v0, v0, 0x1

    goto :goto_117

    .line 2379
    .end local v0    # "j":I
    :cond_127
    :goto_127
    return v5

    .line 2273
    .end local v1    # "rule_carrier":[Ljava/lang/String;
    .end local v2    # "rule_model":[Ljava/lang/String;
    .end local v3    # "target_model":Ljava/lang/String;
    .end local v4    # "target_carrier":Ljava/lang/String;
    .end local v5    # "result":Z
    :cond_128
    :goto_128
    const-string v1, "AASA_ASKSManager"

    const-string v2, "ERROR: checkTokenTarget input is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2274
    return v0
.end method

.method private closeSession(Lcom/android/server/asks/ASKSManagerService$ASKSSession;Ljava/lang/String;)V
    .registers 4
    .param p1, "session"    # Lcom/android/server/asks/ASKSManagerService$ASKSSession;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 3684
    if-eqz p1, :cond_5

    .line 3685
    invoke-virtual {p1}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->clear()V

    .line 3687
    :cond_5
    iget-object v0, p0, Lcom/android/server/asks/ASKSManagerService;->mSessions:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 3688
    iget-object v0, p0, Lcom/android/server/asks/ASKSManagerService;->mSessions:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3689
    :cond_12
    return-void
.end method

.method private convertMillsToString(J)Ljava/lang/String;
    .registers 6
    .param p1, "millTime"    # J

    .line 3348
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyyMMdd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 3350
    .local v0, "formatter":Ljava/text/SimpleDateFormat;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 3351
    .local v1, "calendar":Ljava/util/Calendar;
    invoke-virtual {v1, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 3352
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private convertStringToMills(Ljava/lang/String;)J
    .registers 8
    .param p1, "stringTime"    # Ljava/lang/String;

    .line 3357
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyyMMdd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 3358
    .local v0, "formatter":Ljava/text/SimpleDateFormat;
    const-wide/16 v1, 0x0

    .line 3360
    .local v1, "milltime":J
    :try_start_a
    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    .line 3361
    .local v3, "date":Ljava/util/Date;
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v4
    :try_end_12
    .catch Ljava/text/ParseException; {:try_start_a .. :try_end_12} :catch_14

    move-wide v1, v4

    .line 3365
    .end local v3    # "date":Ljava/util/Date;
    goto :goto_1a

    .line 3362
    :catch_14
    move-exception v3

    .line 3363
    .local v3, "e":Ljava/text/ParseException;
    invoke-virtual {v3}, Ljava/text/ParseException;->printStackTrace()V

    .line 3364
    const-wide/16 v1, -0x1

    .line 3366
    .end local v3    # "e":Ljava/text/ParseException;
    :goto_1a
    return-wide v1
.end method

.method private convertToHex([B)Ljava/lang/String;
    .registers 10
    .param p1, "data"    # [B

    .line 2597
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2599
    .local v0, "buf":Ljava/lang/StringBuilder;
    if-nez p1, :cond_b

    .line 2600
    const-string/jumbo v1, "null"

    return-object v1

    .line 2602
    :cond_b
    array-length v1, p1

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v1, :cond_33

    aget-byte v3, p1, v2

    .line 2604
    .local v3, "b":B
    ushr-int/lit8 v4, v3, 0x4

    and-int/lit8 v4, v4, 0xf

    .line 2605
    .local v4, "halfbyte":I
    const/4 v5, 0x0

    .line 2608
    .local v5, "two_halfs":I
    :goto_16
    if-ltz v4, :cond_1f

    const/16 v6, 0x9

    if-gt v4, v6, :cond_1f

    add-int/lit8 v6, v4, 0x30

    goto :goto_23

    :cond_1f
    add-int/lit8 v6, v4, -0xa

    add-int/lit8 v6, v6, 0x61

    :goto_23
    int-to-char v6, v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2609
    and-int/lit8 v4, v3, 0xf

    .line 2611
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "two_halfs":I
    .local v6, "two_halfs":I
    const/4 v7, 0x1

    if-lt v5, v7, :cond_31

    .line 2602
    .end local v3    # "b":B
    .end local v4    # "halfbyte":I
    .end local v6    # "two_halfs":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 2611
    .restart local v3    # "b":B
    .restart local v4    # "halfbyte":I
    .restart local v6    # "two_halfs":I
    :cond_31
    move v5, v6

    goto :goto_16

    .line 2613
    .end local v3    # "b":B
    .end local v4    # "halfbyte":I
    .end local v6    # "two_halfs":I
    :cond_33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private copyASKSpolicyFromSystem()Z
    .registers 25

    .line 833
    move-object/from16 v1, p0

    const-string v2, "/system/etc/"

    .line 834
    .local v2, "srcPath":Ljava/lang/String;
    const-string v3, "/data/system/.aasa/AASApolicy/"

    .line 836
    .local v3, "destPath":Ljava/lang/String;
    const/4 v4, 0x0

    .line 838
    .local v4, "isEdit":Z
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v5, v0

    .line 839
    .local v5, "directoryFrom":Ljava/io/File;
    new-instance v0, Lcom/android/server/asks/ASKSManagerService$1;

    invoke-direct {v0, v1}, Lcom/android/server/asks/ASKSManagerService$1;-><init>(Lcom/android/server/asks/ASKSManagerService;)V

    move-object v6, v0

    .line 845
    .local v6, "filter":Ljava/io/FilenameFilter;
    invoke-virtual {v5, v6}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v7

    .line 847
    .local v7, "xmlFileNames":[Ljava/lang/String;
    const/4 v8, 0x0

    const-string v9, "AASA_ASKSManager"

    if-nez v7, :cond_22

    .line 848
    const-string v0, "There are no target file in /system/etc/"

    invoke-static {v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    return v8

    .line 855
    :cond_22
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v10, v0

    .line 856
    .local v10, "directoryTo":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_31

    .line 857
    invoke-virtual {v10}, Ljava/io/File;->mkdirs()Z

    .line 861
    :cond_31
    new-instance v0, Ljava/io/File;

    const-string v11, "/data/system/.aasa/asks.xml"

    invoke-direct {v0, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 862
    const-string v0, "ASKS file exists."

    invoke-static {v9, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    const-string v0, "ASKS_FILE"

    invoke-direct {v1, v0, v11}, Lcom/android/server/asks/ASKSManagerService;->getASKSPolicyVersion(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/asks/ASKSManagerService;->mASKSPolicyVersion:Ljava/lang/String;

    .line 864
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "mASKSPolicyVersion = "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v11, Lcom/android/server/asks/ASKSManagerService;->mASKSPolicyVersion:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    :cond_62
    sget-object v0, Lcom/android/server/asks/ASKSManagerService;->mASKSPolicyVersion:Ljava/lang/String;

    .line 869
    .local v0, "maxVersion":Ljava/lang/String;
    array-length v11, v7

    move-object v12, v0

    move v13, v8

    .end local v0    # "maxVersion":Ljava/lang/String;
    .local v12, "maxVersion":Ljava/lang/String;
    :goto_67
    if-ge v13, v11, :cond_24c

    aget-object v14, v7, v13

    .line 870
    .local v14, "fileName":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v0, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v15, v0

    .line 871
    .local v15, "fromFile":Ljava/io/File;
    const-string v0, ""

    .line 872
    .local v0, "loc_destPath":Ljava/lang/String;
    const-string v16, "00000000"

    .line 873
    .local v16, "toFileVersion":Ljava/lang/String;
    const-string v17, "00000000"

    .line 875
    .local v17, "fromFileVersion":Ljava/lang/String;
    move-object/from16 v18, v3

    .line 877
    .end local v0    # "loc_destPath":Ljava/lang/String;
    .local v18, "loc_destPath":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v20, v2

    move-object/from16 v2, v18

    .end local v18    # "loc_destPath":Ljava/lang/String;
    .local v2, "loc_destPath":Ljava/lang/String;
    .local v20, "srcPath":Ljava/lang/String;
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v8, v0

    .line 878
    .local v8, "toFile":Ljava/io/File;
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_223

    .line 879
    invoke-virtual {v15}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v18, v2

    .end local v2    # "loc_destPath":Ljava/lang/String;
    .restart local v18    # "loc_destPath":Ljava/lang/String;
    const-string v2, "ASKS_RULE_FILE"

    invoke-direct {v1, v2, v0}, Lcom/android/server/asks/ASKSManagerService;->getASKSPolicyVersion(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 881
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_12f

    .line 883
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v21, v3

    .end local v3    # "destPath":Ljava/lang/String;
    .local v21, "destPath":Ljava/lang/String;
    const-string v3, "There are already exist xml files in /.aasa/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/android/server/asks/ASKSManagerService;->getASKSPolicyVersion(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 885
    .end local v16    # "toFileVersion":Ljava/lang/String;
    .local v0, "toFileVersion":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x8

    if-ge v2, v3, :cond_f3

    .line 886
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "20"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v16, v0

    goto :goto_f5

    .line 885
    :cond_f3
    move-object/from16 v16, v0

    .line 889
    .end local v0    # "toFileVersion":Ljava/lang/String;
    .restart local v16    # "toFileVersion":Ljava/lang/String;
    :goto_f5
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-le v0, v2, :cond_131

    .line 890
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skip, Current "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " rule is latest version."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-le v0, v2, :cond_12a

    .line 892
    move-object/from16 v0, v16

    move-object v12, v0

    move/from16 v19, v4

    const/4 v4, 0x0

    .end local v12    # "maxVersion":Ljava/lang/String;
    .local v0, "maxVersion":Ljava/lang/String;
    goto/16 :goto_23f

    .line 891
    .end local v0    # "maxVersion":Ljava/lang/String;
    .restart local v12    # "maxVersion":Ljava/lang/String;
    :cond_12a
    move/from16 v19, v4

    const/4 v4, 0x0

    goto/16 :goto_23f

    .line 881
    .end local v21    # "destPath":Ljava/lang/String;
    .restart local v3    # "destPath":Ljava/lang/String;
    :cond_12f
    move-object/from16 v21, v3

    .line 898
    .end local v3    # "destPath":Ljava/lang/String;
    .restart local v21    # "destPath":Ljava/lang/String;
    :cond_131
    const/16 v0, 0x800

    new-array v2, v0, [B

    .line 899
    .local v2, "buf":[B
    const/4 v3, 0x0

    .line 900
    .local v3, "fin":Ljava/io/FileInputStream;
    const/16 v22, 0x0

    .line 902
    .local v22, "fout":Ljava/io/FileOutputStream;
    :try_start_138
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v15}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v3, v0

    .line 903
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_143
    .catch Ljava/io/FileNotFoundException; {:try_start_138 .. :try_end_143} :catch_1d4
    .catch Ljava/io/IOException; {:try_start_138 .. :try_end_143} :catch_1b5
    .catchall {:try_start_138 .. :try_end_143} :catchall_1b0

    move-object/from16 v22, v0

    .line 904
    const/4 v0, 0x0

    .line 905
    .local v0, "read":I
    :goto_146
    move/from16 v23, v0

    .end local v0    # "read":I
    .local v23, "read":I
    :try_start_148
    array-length v0, v2
    :try_end_149
    .catch Ljava/io/FileNotFoundException; {:try_start_148 .. :try_end_149} :catch_1a9
    .catch Ljava/io/IOException; {:try_start_148 .. :try_end_149} :catch_1a2
    .catchall {:try_start_148 .. :try_end_149} :catchall_19a

    const/4 v1, 0x0

    :try_start_14a
    invoke-virtual {v3, v2, v1, v0}, Ljava/io/FileInputStream;->read([BII)I

    move-result v0
    :try_end_14e
    .catch Ljava/io/FileNotFoundException; {:try_start_14a .. :try_end_14e} :catch_193
    .catch Ljava/io/IOException; {:try_start_14a .. :try_end_14e} :catch_18c
    .catchall {:try_start_14a .. :try_end_14e} :catchall_19a

    move/from16 v19, v0

    .end local v23    # "read":I
    .local v19, "read":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_173

    .line 906
    move/from16 v0, v19

    move-object/from16 v1, v22

    move/from16 v19, v4

    const/4 v4, 0x0

    .end local v4    # "isEdit":Z
    .end local v22    # "fout":Ljava/io/FileOutputStream;
    .restart local v0    # "read":I
    .local v1, "fout":Ljava/io/FileOutputStream;
    .local v19, "isEdit":Z
    :try_start_15a
    invoke-virtual {v1, v2, v4, v0}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_15d
    .catch Ljava/io/FileNotFoundException; {:try_start_15a .. :try_end_15d} :catch_16e
    .catch Ljava/io/IOException; {:try_start_15a .. :try_end_15d} :catch_16a
    .catchall {:try_start_15a .. :try_end_15d} :catchall_164

    move-object/from16 v22, v1

    move/from16 v4, v19

    move-object/from16 v1, p0

    goto :goto_146

    .line 915
    .end local v0    # "read":I
    :catchall_164
    move-exception v0

    move-object/from16 v22, v1

    move-object v1, v0

    goto/16 :goto_20f

    .line 911
    :catch_16a
    move-exception v0

    move-object/from16 v22, v1

    goto :goto_1b9

    .line 908
    :catch_16e
    move-exception v0

    move-object/from16 v22, v1

    goto/16 :goto_1d8

    .line 905
    .end local v1    # "fout":Ljava/io/FileOutputStream;
    .restart local v4    # "isEdit":Z
    .local v19, "read":I
    .restart local v22    # "fout":Ljava/io/FileOutputStream;
    :cond_173
    move/from16 v0, v19

    move-object/from16 v1, v22

    move/from16 v19, v4

    const/4 v4, 0x0

    .line 916
    .end local v4    # "isEdit":Z
    .end local v22    # "fout":Ljava/io/FileOutputStream;
    .restart local v1    # "fout":Ljava/io/FileOutputStream;
    .local v19, "isEdit":Z
    nop

    .line 917
    :try_start_17b
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 918
    nop

    .line 919
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_182
    .catch Ljava/io/IOException; {:try_start_17b .. :try_end_182} :catch_183

    .line 922
    goto :goto_188

    .line 920
    :catch_183
    move-exception v0

    .line 921
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 923
    .end local v0    # "e":Ljava/io/IOException;
    nop

    .line 925
    :goto_188
    move-object/from16 v22, v1

    goto/16 :goto_1eb

    .line 911
    .end local v1    # "fout":Ljava/io/FileOutputStream;
    .end local v19    # "isEdit":Z
    .restart local v4    # "isEdit":Z
    .restart local v22    # "fout":Ljava/io/FileOutputStream;
    :catch_18c
    move-exception v0

    move/from16 v19, v4

    move v4, v1

    move-object/from16 v1, v22

    goto :goto_1a8

    .line 908
    :catch_193
    move-exception v0

    move/from16 v19, v4

    move v4, v1

    move-object/from16 v1, v22

    goto :goto_1af

    .line 915
    :catchall_19a
    move-exception v0

    move/from16 v19, v4

    move-object/from16 v1, v22

    move-object v1, v0

    .end local v4    # "isEdit":Z
    .end local v22    # "fout":Ljava/io/FileOutputStream;
    .restart local v1    # "fout":Ljava/io/FileOutputStream;
    .restart local v19    # "isEdit":Z
    goto/16 :goto_20f

    .line 911
    .end local v1    # "fout":Ljava/io/FileOutputStream;
    .end local v19    # "isEdit":Z
    .restart local v4    # "isEdit":Z
    .restart local v22    # "fout":Ljava/io/FileOutputStream;
    :catch_1a2
    move-exception v0

    move/from16 v19, v4

    move-object/from16 v1, v22

    const/4 v4, 0x0

    .end local v4    # "isEdit":Z
    .end local v22    # "fout":Ljava/io/FileOutputStream;
    .restart local v1    # "fout":Ljava/io/FileOutputStream;
    .restart local v19    # "isEdit":Z
    :goto_1a8
    goto :goto_1b9

    .line 908
    .end local v1    # "fout":Ljava/io/FileOutputStream;
    .end local v19    # "isEdit":Z
    .restart local v4    # "isEdit":Z
    .restart local v22    # "fout":Ljava/io/FileOutputStream;
    :catch_1a9
    move-exception v0

    move/from16 v19, v4

    move-object/from16 v1, v22

    const/4 v4, 0x0

    .end local v4    # "isEdit":Z
    .end local v22    # "fout":Ljava/io/FileOutputStream;
    .restart local v1    # "fout":Ljava/io/FileOutputStream;
    .restart local v19    # "isEdit":Z
    :goto_1af
    goto :goto_1d8

    .line 915
    .end local v1    # "fout":Ljava/io/FileOutputStream;
    .end local v19    # "isEdit":Z
    .restart local v4    # "isEdit":Z
    .restart local v22    # "fout":Ljava/io/FileOutputStream;
    :catchall_1b0
    move-exception v0

    move/from16 v19, v4

    move-object v1, v0

    .end local v4    # "isEdit":Z
    .restart local v19    # "isEdit":Z
    goto :goto_20f

    .line 911
    .end local v19    # "isEdit":Z
    .restart local v4    # "isEdit":Z
    :catch_1b5
    move-exception v0

    move/from16 v19, v4

    const/4 v4, 0x0

    .line 912
    .end local v4    # "isEdit":Z
    .restart local v0    # "e":Ljava/io/IOException;
    .restart local v19    # "isEdit":Z
    :goto_1b9
    :try_start_1b9
    const-string v1, "IOException"

    invoke-static {v9, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1c1
    .catchall {:try_start_1b9 .. :try_end_1c1} :catchall_20d

    .line 916
    .end local v0    # "e":Ljava/io/IOException;
    if-eqz v3, :cond_1c9

    .line 917
    :try_start_1c3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    goto :goto_1c9

    .line 920
    :catch_1c7
    move-exception v0

    goto :goto_1cf

    .line 918
    :cond_1c9
    :goto_1c9
    if-eqz v22, :cond_1d3

    .line 919
    invoke-virtual/range {v22 .. v22}, Ljava/io/FileOutputStream;->close()V
    :try_end_1ce
    .catch Ljava/io/IOException; {:try_start_1c3 .. :try_end_1ce} :catch_1c7

    goto :goto_1d3

    .line 921
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_1cf
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 923
    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_1eb

    .line 922
    :cond_1d3
    :goto_1d3
    goto :goto_1eb

    .line 908
    .end local v19    # "isEdit":Z
    .restart local v4    # "isEdit":Z
    :catch_1d4
    move-exception v0

    move/from16 v19, v4

    const/4 v4, 0x0

    .line 909
    .end local v4    # "isEdit":Z
    .local v0, "e":Ljava/io/FileNotFoundException;
    .restart local v19    # "isEdit":Z
    :goto_1d8
    :try_start_1d8
    const-string v1, "FileNotFoundException"

    invoke-static {v9, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_1e0
    .catchall {:try_start_1d8 .. :try_end_1e0} :catchall_20d

    .line 916
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    if-eqz v3, :cond_1e5

    .line 917
    :try_start_1e2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 918
    :cond_1e5
    if-eqz v22, :cond_1d3

    .line 919
    invoke-virtual/range {v22 .. v22}, Ljava/io/FileOutputStream;->close()V
    :try_end_1ea
    .catch Ljava/io/IOException; {:try_start_1e2 .. :try_end_1ea} :catch_1c7

    goto :goto_1d3

    .line 925
    :goto_1eb
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-le v0, v1, :cond_1f7

    .line 926
    move-object/from16 v12, v17

    .line 929
    :cond_1f7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "there is xml file /system/etc/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    .end local v2    # "buf":[B
    .end local v3    # "fin":Ljava/io/FileInputStream;
    .end local v22    # "fout":Ljava/io/FileOutputStream;
    goto :goto_23f

    .line 915
    .restart local v2    # "buf":[B
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v22    # "fout":Ljava/io/FileOutputStream;
    :catchall_20d
    move-exception v0

    move-object v1, v0

    .line 916
    :goto_20f
    if-eqz v3, :cond_217

    .line 917
    :try_start_211
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    goto :goto_217

    .line 920
    :catch_215
    move-exception v0

    goto :goto_21d

    .line 918
    :cond_217
    :goto_217
    if-eqz v22, :cond_221

    .line 919
    invoke-virtual/range {v22 .. v22}, Ljava/io/FileOutputStream;->close()V
    :try_end_21c
    .catch Ljava/io/IOException; {:try_start_211 .. :try_end_21c} :catch_215

    goto :goto_221

    .line 921
    .local v0, "e":Ljava/io/IOException;
    :goto_21d
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_222

    .line 922
    .end local v0    # "e":Ljava/io/IOException;
    :cond_221
    :goto_221
    nop

    .line 923
    :goto_222
    throw v1

    .line 931
    .end local v18    # "loc_destPath":Ljava/lang/String;
    .end local v19    # "isEdit":Z
    .end local v21    # "destPath":Ljava/lang/String;
    .end local v22    # "fout":Ljava/io/FileOutputStream;
    .local v2, "loc_destPath":Ljava/lang/String;
    .local v3, "destPath":Ljava/lang/String;
    .restart local v4    # "isEdit":Z
    :cond_223
    move-object/from16 v18, v2

    move-object/from16 v21, v3

    move/from16 v19, v4

    const/4 v4, 0x0

    .end local v2    # "loc_destPath":Ljava/lang/String;
    .end local v3    # "destPath":Ljava/lang/String;
    .end local v4    # "isEdit":Z
    .restart local v18    # "loc_destPath":Ljava/lang/String;
    .restart local v19    # "isEdit":Z
    .restart local v21    # "destPath":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "there is no xml file /system/etc/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    .end local v8    # "toFile":Ljava/io/File;
    .end local v14    # "fileName":Ljava/lang/String;
    .end local v15    # "fromFile":Ljava/io/File;
    .end local v16    # "toFileVersion":Ljava/lang/String;
    .end local v17    # "fromFileVersion":Ljava/lang/String;
    .end local v18    # "loc_destPath":Ljava/lang/String;
    :goto_23f
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v1, p0

    move v8, v4

    move/from16 v4, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    goto/16 :goto_67

    .line 935
    .end local v19    # "isEdit":Z
    .end local v20    # "srcPath":Ljava/lang/String;
    .end local v21    # "destPath":Ljava/lang/String;
    .local v2, "srcPath":Ljava/lang/String;
    .restart local v3    # "destPath":Ljava/lang/String;
    .restart local v4    # "isEdit":Z
    :cond_24c
    move-object/from16 v20, v2

    move-object/from16 v21, v3

    move/from16 v19, v4

    .end local v2    # "srcPath":Ljava/lang/String;
    .end local v3    # "destPath":Ljava/lang/String;
    .end local v4    # "isEdit":Z
    .restart local v19    # "isEdit":Z
    .restart local v20    # "srcPath":Ljava/lang/String;
    .restart local v21    # "destPath":Ljava/lang/String;
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sget-object v1, Lcom/android/server/asks/ASKSManagerService;->mASKSPolicyVersion:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-le v0, v1, :cond_262

    .line 936
    sput-object v12, Lcom/android/server/asks/ASKSManagerService;->mASKSPolicyVersion:Ljava/lang/String;

    .line 937
    const/4 v4, 0x1

    .end local v19    # "isEdit":Z
    .restart local v4    # "isEdit":Z
    goto :goto_264

    .line 935
    .end local v4    # "isEdit":Z
    .restart local v19    # "isEdit":Z
    :cond_262
    move/from16 v4, v19

    .line 940
    .end local v19    # "isEdit":Z
    .restart local v4    # "isEdit":Z
    :goto_264
    return v4
.end method

.method private enforceSystemOrRoot(Ljava/lang/String;)V
    .registers 7
    .param p1, "message"    # Ljava/lang/String;

    .line 251
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 252
    .local v0, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 254
    .local v1, "pid":I
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    if-eq v1, v2, :cond_39

    if-eqz v0, :cond_39

    iget-object v2, p0, Lcom/android/server/asks/ASKSManagerService;->mContext:Landroid/content/Context;

    .line 255
    invoke-static {v2, v0}, Landroid/provider/Settings;->getPackageNameForUid(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.samsung.aasaservice"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    goto :goto_39

    .line 256
    :cond_1f
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 258
    :cond_39
    :goto_39
    return-void
.end method

.method private enforceSystemOrRoot()Z
    .registers 5

    .line 261
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 262
    .local v0, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 264
    .local v1, "pid":I
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    if-eq v1, v2, :cond_20

    if-eqz v0, :cond_20

    iget-object v2, p0, Lcom/android/server/asks/ASKSManagerService;->mContext:Landroid/content/Context;

    .line 265
    invoke-static {v2, v0}, Landroid/provider/Settings;->getPackageNameForUid(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.samsung.aasaservice"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    .line 266
    const/4 v2, 0x0

    return v2

    .line 268
    :cond_20
    const/4 v2, 0x1

    return v2
.end method

.method private findCertificateIndex(Lcom/android/server/asks/ASKSManagerService$ASKSSession;[B)[B
    .registers 19
    .param p1, "session"    # Lcom/android/server/asks/ASKSManagerService$ASKSSession;
    .param p2, "contents"    # [B

    .line 2097
    move-object/from16 v1, p0

    const-string v2, " "

    const-string v3, "21"

    const-string v4, "AASA_ASKSManager"

    :try_start_8
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    move-object v5, v0

    .line 2098
    .local v5, "pullParserFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v5}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    move-object v6, v0

    .line 2099
    .local v6, "parser":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v0, Ljava/io/ByteArrayInputStream;
    :try_end_14
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_14} :catch_fb

    move-object/from16 v7, p2

    :try_start_16
    invoke-direct {v0, v7}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/4 v8, 0x0

    invoke-interface {v6, v0, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 2100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_22
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_16 .. :try_end_22} :catch_f7

    move-object v9, v0

    .line 2102
    .local v9, "verifyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v0, ""

    move-object v10, v0

    .line 2106
    .local v10, "index":Ljava/lang/String;
    :try_start_26
    const-string v11, "INDEX"

    invoke-direct {v1, v6, v11}, Lcom/android/server/asks/ASKSManagerService;->parseXMLNew(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_2c} :catch_d7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_26 .. :try_end_2c} :catch_f7

    move-object v10, v11

    .line 2111
    nop

    .line 2113
    :try_start_2e
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "index : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2114
    const-string v11, "0.0"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_54

    .line 2116
    const-string v0, "ENG Cert Index"

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v15, p1

    goto/16 :goto_d4

    .line 2118
    :cond_54
    const-string v11, "\\."

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 2121
    .local v11, "keyIndex":[Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->getTokenName()Ljava/lang/String;

    move-result-object v12

    const-string v13, "[^0-9]"

    invoke-virtual {v12, v13, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 2122
    .local v12, "SignerVersion":Ljava/lang/String;
    const/4 v13, 0x0

    aget-object v14, v11, v13
    :try_end_67
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2e .. :try_end_67} :catch_f7

    move-object/from16 v15, p1

    :try_start_69
    invoke-virtual {v15, v14}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->setCAKeyIndex(Ljava/lang/String;)V

    .line 2123
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "mTokenName : "

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->getTokenName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " SignerVersion : "

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2126
    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_96

    .line 2127
    const-string v0, "1"

    move-object v12, v0

    .line 2129
    :cond_96
    const/4 v0, 0x1

    aget-object v8, v11, v0

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_a9

    .line 2130
    const-string v0, "Signer Cert File is not matched with index!"

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2131
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0

    .line 2133
    :cond_a9
    const-string v8, "SIGNER"

    aget-object v0, v11, v0

    const/16 v14, 0xe

    invoke-direct {v1, v14, v8, v0}, Lcom/android/server/asks/ASKSManagerService;->checkListForASKS(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v8, -0x1

    if-eq v0, v8, :cond_c0

    .line 2134
    const-string v0, "SIGNER is in CRL"

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2135
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0

    .line 2137
    :cond_c0
    const-string v0, "INTER"

    aget-object v13, v11, v13

    invoke-direct {v1, v14, v0, v13}, Lcom/android/server/asks/ASKSManagerService;->checkListForASKS(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eq v0, v8, :cond_d4

    .line 2138
    const-string v0, "INTER is in CRL"

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2139
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0

    .line 2146
    .end local v5    # "pullParserFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v9    # "verifyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v10    # "index":Ljava/lang/String;
    .end local v11    # "keyIndex":[Ljava/lang/String;
    .end local v12    # "SignerVersion":Ljava/lang/String;
    :cond_d4
    :goto_d4
    nop

    .line 2147
    const/4 v0, 0x0

    return-object v0

    .line 2108
    .restart local v5    # "pullParserFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v9    # "verifyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v10    # "index":Ljava/lang/String;
    :catch_d7
    move-exception v0

    move-object/from16 v15, p1

    .line 2109
    .local v0, "e":Ljava/io/IOException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2110
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v2
    :try_end_f4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_69 .. :try_end_f4} :catch_f5

    return-object v2

    .line 2143
    .end local v0    # "e":Ljava/io/IOException;
    .end local v5    # "pullParserFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v9    # "verifyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v10    # "index":Ljava/lang/String;
    :catch_f5
    move-exception v0

    goto :goto_100

    :catch_f7
    move-exception v0

    move-object/from16 v15, p1

    goto :goto_100

    :catch_fb
    move-exception v0

    move-object/from16 v15, p1

    move-object/from16 v7, p2

    .line 2144
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_100
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2145
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    return-object v2
.end method

.method private getADPDataFromXML(Ljava/util/HashMap;)V
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/asks/ADPContainer;",
            ">;)V"
        }
    .end annotation

    .line 2961
    .local p1, "store":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/asks/ADPContainer;>;"
    const-string v1, "/data/system/.aasa/AASApolicy/ADP.xml"

    .line 2963
    .local v1, "path":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v2, v0

    .line 2965
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_28

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_28

    .line 2966
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 2967
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Ljava/io/File;->setReadable(ZZ)Z

    .line 2969
    :cond_28
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    const-string v5, "AASA_ASKSManager_ADP"

    if-nez v0, :cond_44

    .line 2971
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "file does not exist - "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2974
    :cond_44
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1d8

    .line 2976
    const/4 v6, 0x0

    .line 2978
    .local v6, "fileReader":Ljava/io/FileReader;
    :try_start_4b
    new-instance v0, Ljava/io/FileReader;

    invoke-direct {v0, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_50
    .catch Ljava/io/FileNotFoundException; {:try_start_4b .. :try_end_50} :catch_52

    move-object v6, v0

    .line 2982
    goto :goto_56

    .line 2980
    :catch_52
    move-exception v0

    .line 2981
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 2985
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :goto_56
    :try_start_56
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    move-object v7, v0

    .line 2986
    .local v7, "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v7, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 2989
    :goto_62
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    move v8, v0

    .local v8, "eventType":I
    const/4 v9, 0x2

    if-eq v0, v9, :cond_6d

    if-eq v8, v3, :cond_6d

    goto :goto_62

    .line 2994
    :cond_6d
    new-instance v0, Lcom/android/server/asks/ADPContainer$ADPContainerBuilder;

    invoke-direct {v0}, Lcom/android/server/asks/ADPContainer$ADPContainerBuilder;-><init>()V

    move-object v9, v0

    .line 2995
    .local v9, "adpContainerBuilder":Lcom/android/server/asks/ADPContainer$ADPContainerBuilder;
    new-instance v0, Lcom/android/server/asks/ADPContainer$ADPPolicyBuilder;

    invoke-direct {v0}, Lcom/android/server/asks/ADPContainer$ADPPolicyBuilder;-><init>()V

    move-object v10, v0

    .line 2997
    .local v10, "adpPolicyBuilder":Lcom/android/server/asks/ADPContainer$ADPPolicyBuilder;
    :goto_79
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0
    :try_end_7d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_56 .. :try_end_7d} :catch_1b3
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_7d} :catch_1a7
    .catchall {:try_start_56 .. :try_end_7d} :catchall_1a2

    move v8, v0

    if-eq v0, v3, :cond_19a

    .line 2998
    const/4 v0, 0x3

    const-string/jumbo v11, "pattern"

    const-string v12, "HASHVALUE"

    if-eq v8, v0, :cond_11e

    const/4 v0, 0x4

    if-ne v8, v0, :cond_8d

    goto/16 :goto_11e

    .line 3030
    :cond_8d
    :try_start_8d
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    move-object v13, v0

    .line 3031
    .local v13, "tagName":Ljava/lang/String;
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a1

    .line 3032
    invoke-interface {v7, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/android/server/asks/ADPContainer$ADPContainerBuilder;->set_pkgName(Ljava/lang/String;)Lcom/android/server/asks/ADPContainer$ADPContainerBuilder;

    goto/16 :goto_11a

    .line 3034
    :cond_a1
    const-string/jumbo v0, "versionType"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_a8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8d .. :try_end_a8} :catch_1b3
    .catch Ljava/io/IOException; {:try_start_8d .. :try_end_a8} :catch_1a7
    .catchall {:try_start_8d .. :try_end_a8} :catchall_1a2

    if-eqz v0, :cond_c2

    .line 3036
    :try_start_aa
    invoke-interface {v7, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v10, v0}, Lcom/android/server/asks/ADPContainer$ADPPolicyBuilder;->set_versionType(I)Lcom/android/server/asks/ADPContainer$ADPPolicyBuilder;
    :try_end_b9
    .catch Ljava/lang/NumberFormatException; {:try_start_aa .. :try_end_b9} :catch_ba
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_aa .. :try_end_b9} :catch_1b3
    .catch Ljava/io/IOException; {:try_start_aa .. :try_end_b9} :catch_1a7
    .catchall {:try_start_aa .. :try_end_b9} :catchall_1a2

    .line 3039
    goto :goto_11a

    .line 3037
    :catch_ba
    move-exception v0

    .line 3038
    .local v0, "e":Ljava/lang/NumberFormatException;
    :try_start_bb
    const-string v11, "ERROR: does not match versionType"

    invoke-static {v5, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3039
    nop

    .end local v0    # "e":Ljava/lang/NumberFormatException;
    goto :goto_11a

    .line 3041
    :cond_c2
    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d0

    .line 3042
    invoke-interface {v7, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/android/server/asks/ADPContainer$ADPPolicyBuilder;->set_pattern(Ljava/lang/String;)Lcom/android/server/asks/ADPContainer$ADPPolicyBuilder;

    goto :goto_11a

    .line 3044
    :cond_d0
    const-string/jumbo v0, "hashCode"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e1

    .line 3045
    invoke-interface {v7, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/android/server/asks/ADPContainer$ADPPolicyBuilder;->set_hashCode(Ljava/lang/String;)Lcom/android/server/asks/ADPContainer$ADPPolicyBuilder;

    goto :goto_11a

    .line 3047
    :cond_e1
    const-string/jumbo v0, "sep"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10a

    .line 3048
    const/4 v11, 0x1

    .line 3050
    .local v11, "isNotTarget":Z
    invoke-interface {v7, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0
    :try_end_ef
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_bb .. :try_end_ef} :catch_1b3
    .catch Ljava/io/IOException; {:try_start_bb .. :try_end_ef} :catch_1a7
    .catchall {:try_start_bb .. :try_end_ef} :catchall_1a2

    move-object v12, v0

    .line 3052
    .local v12, "attrValue":Ljava/lang/String;
    :try_start_f0
    sget v0, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14
    :try_end_fa
    .catch Ljava/lang/NumberFormatException; {:try_start_f0 .. :try_end_fa} :catch_fe
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_f0 .. :try_end_fa} :catch_1b3
    .catch Ljava/io/IOException; {:try_start_f0 .. :try_end_fa} :catch_1a7
    .catchall {:try_start_f0 .. :try_end_fa} :catchall_1a2

    if-lt v0, v14, :cond_fd

    .line 3053
    const/4 v11, 0x0

    .line 3057
    :cond_fd
    goto :goto_104

    .line 3055
    :catch_fe
    move-exception v0

    .line 3056
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    :try_start_ff
    const-string v14, "NumberFormatExceptionn"

    invoke-static {v5, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3058
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :goto_104
    if-eqz v11, :cond_109

    .line 3059
    invoke-virtual {v10}, Lcom/android/server/asks/ADPContainer$ADPPolicyBuilder;->flush()V

    .line 3060
    .end local v11    # "isNotTarget":Z
    .end local v12    # "attrValue":Ljava/lang/String;
    :cond_109
    goto :goto_11a

    .line 3061
    :cond_10a
    const-string/jumbo v0, "format"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11a

    .line 3062
    invoke-interface {v7, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/android/server/asks/ADPContainer$ADPPolicyBuilder;->set_format(Ljava/lang/String;)Lcom/android/server/asks/ADPContainer$ADPPolicyBuilder;

    .line 3064
    .end local v13    # "tagName":Ljava/lang/String;
    :cond_11a
    :goto_11a
    move-object/from16 v12, p1

    goto/16 :goto_79

    .line 3000
    :cond_11e
    :goto_11e
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_158

    .line 3001
    const/4 v0, 0x0

    .line 3003
    .local v0, "adpContainer":Lcom/android/server/asks/ADPContainer;
    invoke-virtual {v9}, Lcom/android/server/asks/ADPContainer$ADPContainerBuilder;->createADPContainer()Lcom/android/server/asks/ADPContainer;

    move-result-object v11

    move-object v0, v11

    .line 3005
    if-nez v0, :cond_14b

    .line 3007
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " does not make ADP object"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v12, p1

    goto :goto_194

    .line 3010
    :cond_14b
    invoke-virtual {v0}, Lcom/android/server/asks/ADPContainer;->getPackageName()Ljava/lang/String;

    move-result-object v11
    :try_end_14f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_ff .. :try_end_14f} :catch_1b3
    .catch Ljava/io/IOException; {:try_start_ff .. :try_end_14f} :catch_1a7
    .catchall {:try_start_ff .. :try_end_14f} :catchall_1a2

    move-object/from16 v12, p1

    :try_start_151
    invoke-virtual {v12, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3011
    invoke-virtual {v9}, Lcom/android/server/asks/ADPContainer$ADPContainerBuilder;->flush()V

    goto :goto_194

    .line 3013
    .end local v0    # "adpContainer":Lcom/android/server/asks/ADPContainer;
    :cond_158
    move-object/from16 v12, p1

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_194

    .line 3015
    invoke-virtual {v10}, Lcom/android/server/asks/ADPContainer$ADPPolicyBuilder;->createADPPolicy()Lcom/android/server/asks/ADPContainer$ADPPolicy;

    move-result-object v0

    .line 3016
    .local v0, "adpPolicy":Lcom/android/server/asks/ADPContainer$ADPPolicy;
    if-nez v0, :cond_183

    .line 3017
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " does not make ADPPolicy object"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_192

    .line 3020
    :cond_183
    invoke-virtual {v9}, Lcom/android/server/asks/ADPContainer$ADPContainerBuilder;->get_ADPPolicy()Ljava/util/ArrayList;

    move-result-object v11

    if-nez v11, :cond_18c

    .line 3021
    invoke-virtual {v9}, Lcom/android/server/asks/ADPContainer$ADPContainerBuilder;->set_ADPPolicy()Lcom/android/server/asks/ADPContainer$ADPContainerBuilder;

    .line 3023
    :cond_18c
    invoke-virtual {v9, v0}, Lcom/android/server/asks/ADPContainer$ADPContainerBuilder;->add_ADPPolicy(Lcom/android/server/asks/ADPContainer$ADPPolicy;)Lcom/android/server/asks/ADPContainer$ADPContainerBuilder;

    .line 3024
    invoke-virtual {v10}, Lcom/android/server/asks/ADPContainer$ADPPolicyBuilder;->flush()V
    :try_end_192
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_151 .. :try_end_192} :catch_198
    .catch Ljava/io/IOException; {:try_start_151 .. :try_end_192} :catch_196
    .catchall {:try_start_151 .. :try_end_192} :catchall_1c7

    .line 3026
    .end local v0    # "adpPolicy":Lcom/android/server/asks/ADPContainer$ADPPolicy;
    :goto_192
    goto/16 :goto_79

    .line 3013
    :cond_194
    :goto_194
    goto/16 :goto_79

    .line 3067
    .end local v7    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v8    # "eventType":I
    .end local v9    # "adpContainerBuilder":Lcom/android/server/asks/ADPContainer$ADPContainerBuilder;
    .end local v10    # "adpPolicyBuilder":Lcom/android/server/asks/ADPContainer$ADPPolicyBuilder;
    :catch_196
    move-exception v0

    goto :goto_1aa

    .line 3065
    :catch_198
    move-exception v0

    goto :goto_1b6

    .line 2997
    .restart local v7    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v8    # "eventType":I
    .restart local v9    # "adpContainerBuilder":Lcom/android/server/asks/ADPContainer$ADPContainerBuilder;
    .restart local v10    # "adpPolicyBuilder":Lcom/android/server/asks/ADPContainer$ADPPolicyBuilder;
    :cond_19a
    move-object/from16 v12, p1

    .line 3071
    .end local v7    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v8    # "eventType":I
    .end local v9    # "adpContainerBuilder":Lcom/android/server/asks/ADPContainer$ADPContainerBuilder;
    .end local v10    # "adpPolicyBuilder":Lcom/android/server/asks/ADPContainer$ADPPolicyBuilder;
    if-eqz v6, :cond_1c6

    .line 3072
    :try_start_19e
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_1a1
    .catch Ljava/io/IOException; {:try_start_19e .. :try_end_1a1} :catch_1bf

    goto :goto_1c6

    .line 3070
    :catchall_1a2
    move-exception v0

    move-object/from16 v12, p1

    :goto_1a5
    move-object v3, v0

    goto :goto_1c9

    .line 3067
    :catch_1a7
    move-exception v0

    move-object/from16 v12, p1

    .line 3068
    .local v0, "e2":Ljava/io/IOException;
    :goto_1aa
    :try_start_1aa
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1ad
    .catchall {:try_start_1aa .. :try_end_1ad} :catchall_1c7

    .line 3071
    .end local v0    # "e2":Ljava/io/IOException;
    if-eqz v6, :cond_1c6

    .line 3072
    :try_start_1af
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_1b2
    .catch Ljava/io/IOException; {:try_start_1af .. :try_end_1b2} :catch_1bf

    goto :goto_1c6

    .line 3065
    :catch_1b3
    move-exception v0

    move-object/from16 v12, p1

    .line 3066
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_1b6
    :try_start_1b6
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_1b9
    .catchall {:try_start_1b6 .. :try_end_1b9} :catchall_1c7

    .line 3071
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    if-eqz v6, :cond_1c6

    .line 3072
    :try_start_1bb
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_1be
    .catch Ljava/io/IOException; {:try_start_1bb .. :try_end_1be} :catch_1bf

    goto :goto_1c6

    .line 3073
    :catch_1bf
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    .line 3074
    .local v0, "ioe":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 3076
    .end local v0    # "ioe":Ljava/io/IOException;
    goto :goto_1da

    .line 3075
    :cond_1c6
    :goto_1c6
    goto :goto_1da

    .line 3070
    :catchall_1c7
    move-exception v0

    goto :goto_1a5

    .line 3071
    :goto_1c9
    if-eqz v6, :cond_1d6

    .line 3072
    :try_start_1cb
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_1ce
    .catch Ljava/io/IOException; {:try_start_1cb .. :try_end_1ce} :catch_1cf

    goto :goto_1d6

    .line 3073
    :catch_1cf
    move-exception v0

    move-object v4, v0

    move-object v0, v4

    .line 3074
    .restart local v0    # "ioe":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1d7

    .line 3075
    .end local v0    # "ioe":Ljava/io/IOException;
    :cond_1d6
    :goto_1d6
    nop

    .line 3076
    :goto_1d7
    throw v3

    .line 2974
    .end local v6    # "fileReader":Ljava/io/FileReader;
    :cond_1d8
    move-object/from16 v12, p1

    .line 3078
    :goto_1da
    return-void
.end method

.method private getASKSDataFromXML(ILjava/util/HashMap;)V
    .registers 18
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 1240
    .local p2, "store":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    move-object/from16 v1, p2

    const-string v0, ""

    const-string v2, ""

    .line 1241
    .local v2, "path":Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1243
    .local v3, "features":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v4, "DUMMY"

    const-string v5, "STORE"

    const-string v6, "HASH"

    const-string v7, "HASHVALUE"

    packed-switch p1, :pswitch_data_11c

    .line 1290
    :pswitch_16
    return-void

    .line 1284
    :pswitch_17
    const-string v2, "/data/system/.aasa/AASApolicy/protection_list.xml"

    .line 1285
    const-string/jumbo v4, "package"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1286
    const-string v4, "digest"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1287
    goto :goto_61

    .line 1277
    :pswitch_25
    const-string v2, "/data/system/.aasa/AASApolicy/ASKSHB.xml"

    .line 1278
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1279
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1280
    goto :goto_61

    .line 1271
    :pswitch_2e
    const-string v2, "/data/system/.aasa/AASApolicy/ASKSK.xml"

    .line 1272
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1273
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1274
    goto :goto_61

    .line 1247
    :pswitch_37
    const-string v2, "/data/system/.aasa/AASApolicy/ASKSC.xml"

    .line 1248
    const-string v4, "CERT"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1249
    const-string v4, "NUM"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1250
    goto :goto_61

    .line 1265
    :pswitch_44
    const-string v2, "/data/system/.aasa/AASApolicy/ASKSTS.xml"

    .line 1266
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1267
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1268
    goto :goto_61

    .line 1259
    :pswitch_4d
    const-string v2, "/data/system/.aasa/AASApolicy/ASKSP.xml"

    .line 1260
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1261
    const-string v4, "UID"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1262
    goto :goto_61

    .line 1253
    :pswitch_58
    const-string v2, "/data/system/.aasa/AASApolicy/ASKSB.xml"

    .line 1254
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1255
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1256
    nop

    .line 1293
    :goto_61
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1295
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v5, :cond_86

    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_86

    .line 1296
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->mkdir()Z

    .line 1297
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5, v6, v7}, Ljava/io/File;->setReadable(ZZ)Z

    .line 1299
    :cond_86
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_8d

    .line 1301
    return-void

    .line 1305
    :cond_8d
    const/4 v5, 0x0

    .line 1307
    .local v5, "fileReader":Ljava/io/FileReader;
    :try_start_8e
    new-instance v8, Ljava/io/FileReader;

    invoke-direct {v8, v4}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_93
    .catch Ljava/io/FileNotFoundException; {:try_start_8e .. :try_end_93} :catch_117

    move-object v5, v8

    .line 1312
    nop

    .line 1315
    :try_start_95
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v8

    .line 1316
    .local v8, "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v8, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 1319
    const/4 v9, 0x1

    .line 1321
    .local v9, "isTarget":Z
    move-object v10, v0

    .line 1322
    .local v10, "keyName":Ljava/lang/String;
    const/4 v11, 0x0

    .line 1323
    .local v11, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    nop

    .line 1325
    .local v0, "date":Ljava/lang/String;
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v12

    .line 1326
    .local v12, "eventType":I
    :goto_a4
    if-eq v12, v6, :cond_fc

    .line 1327
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v13

    .line 1328
    .local v13, "name":Ljava/lang/String;
    const/4 v14, 0x2

    if-eq v12, v14, :cond_c3

    const/4 v14, 0x3

    if-eq v12, v14, :cond_b1

    goto :goto_f6

    .line 1366
    :cond_b1
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_f6

    .line 1367
    if-eqz v1, :cond_f6

    .line 1373
    invoke-virtual {v1, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f6

    .line 1330
    :cond_c3
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_e1

    .line 1334
    invoke-interface {v8, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_da

    .line 1335
    invoke-interface {v8, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v14

    move-object v10, v14

    .line 1338
    :cond_da
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v14

    goto :goto_f6

    .line 1339
    :cond_e1
    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_f6

    .line 1348
    invoke-interface {v8, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_f6

    .line 1349
    if-eqz v11, :cond_f6

    .line 1350
    invoke-interface {v8, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1379
    :cond_f6
    :goto_f6
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v14

    move v12, v14

    .line 1380
    .end local v13    # "name":Ljava/lang/String;
    goto :goto_a4

    .line 1381
    :cond_fc
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_ff
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_95 .. :try_end_ff} :catch_10c
    .catch Ljava/io/IOException; {:try_start_95 .. :try_end_ff} :catch_101

    .line 1400
    .end local v0    # "date":Ljava/lang/String;
    .end local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v9    # "isTarget":Z
    .end local v10    # "keyName":Ljava/lang/String;
    .end local v11    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v12    # "eventType":I
    nop

    .line 1402
    .end local v5    # "fileReader":Ljava/io/FileReader;
    return-void

    .line 1392
    .restart local v5    # "fileReader":Ljava/io/FileReader;
    :catch_101
    move-exception v0

    move-object v6, v0

    .line 1394
    .local v6, "e":Ljava/io/IOException;
    :try_start_103
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_106
    .catch Ljava/io/IOException; {:try_start_103 .. :try_end_106} :catch_107

    .line 1397
    goto :goto_108

    .line 1396
    :catch_107
    move-exception v0

    .line 1398
    :goto_108
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 1399
    return-void

    .line 1383
    .end local v6    # "e":Ljava/io/IOException;
    :catch_10c
    move-exception v0

    move-object v6, v0

    .line 1385
    .local v6, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_10e
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_111
    .catch Ljava/io/IOException; {:try_start_10e .. :try_end_111} :catch_112

    .line 1388
    goto :goto_113

    .line 1387
    :catch_112
    move-exception v0

    .line 1389
    :goto_113
    invoke-virtual {v6}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 1390
    return-void

    .line 1309
    .end local v6    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_117
    move-exception v0

    .line 1310
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 1311
    return-void

    :pswitch_data_11c
    .packed-switch 0x9
        :pswitch_58
        :pswitch_4d
        :pswitch_16
        :pswitch_44
        :pswitch_16
        :pswitch_37
        :pswitch_2e
        :pswitch_16
        :pswitch_16
        :pswitch_25
        :pswitch_17
    .end packed-switch
.end method

.method private getASKSPolicyVersion(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "filePath"    # Ljava/lang/String;

    .line 801
    const-string v0, "00000000"

    .line 803
    .local v0, "retValue":Ljava/lang/String;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 804
    .local v1, "tagMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[Ljava/lang/String;>;"
    const-string v2, "<asks version=\""

    const-string v3, "\""

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "ASKS_FILE"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 805
    const-string v2, "<VERSION value=\""

    const-string v3, "\"/>"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "ASKS_RULE_FILE"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 808
    :try_start_21
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/String;

    invoke-static {p2, v4}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v4

    invoke-static {v4}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>([B)V

    .line 812
    .local v2, "fileContents":Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 814
    .local v4, "splitfront":[Ljava/lang/String;
    array-length v5, v4

    const/4 v6, 0x1

    if-le v5, v6, :cond_59

    .line 816
    aget-object v5, v4, v6

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    aget-object v6, v7, v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 817
    .local v5, "splitback":[Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_58

    .line 818
    aget-object v3, v5, v3
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_57} :catch_5a

    move-object v0, v3

    .line 826
    .end local v2    # "fileContents":Ljava/lang/String;
    .end local v4    # "splitfront":[Ljava/lang/String;
    .end local v5    # "splitback":[Ljava/lang/String;
    :cond_58
    goto :goto_5e

    .line 822
    .restart local v2    # "fileContents":Ljava/lang/String;
    .restart local v4    # "splitfront":[Ljava/lang/String;
    :cond_59
    return-object v0

    .line 824
    .end local v2    # "fileContents":Ljava/lang/String;
    .end local v4    # "splitfront":[Ljava/lang/String;
    :catch_5a
    move-exception v2

    .line 825
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 828
    .end local v2    # "e":Ljava/io/IOException;
    :goto_5e
    return-object v0
.end method

.method private getAdvancedHash(Ljava/lang/String;)Ljava/lang/String;
    .registers 21
    .param p1, "codePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2497
    move-object/from16 v1, p0

    const-string v2, "AASA_ASKSManager"

    const/4 v3, 0x0

    .line 2499
    .local v3, "md":Ljava/security/MessageDigest;
    :try_start_5
    const-string v0, "SHA-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0
    :try_end_b
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5 .. :try_end_b} :catch_d

    move-object v3, v0

    .line 2502
    goto :goto_11

    .line 2500
    :catch_d
    move-exception v0

    .line 2501
    .local v0, "e1":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 2503
    .end local v0    # "e1":Ljava/security/NoSuchAlgorithmException;
    :goto_11
    const/4 v4, 0x0

    .line 2505
    .local v4, "mTokenFile":Landroid/util/jar/StrictJarFile;
    :try_start_12
    new-instance v0, Landroid/util/jar/StrictJarFile;
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_14} :catch_157
    .catchall {:try_start_12 .. :try_end_14} :catchall_150

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object/from16 v7, p1

    :try_start_18
    invoke-direct {v0, v7, v5, v6}, Landroid/util/jar/StrictJarFile;-><init>(Ljava/lang/String;ZZ)V

    move-object v4, v0

    .line 2506
    nop

    .line 2508
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v0

    .line 2510
    .local v6, "array_name_sha1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    move-object v8, v0

    .line 2511
    .local v8, "local_name_list":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 2512
    .local v0, "local_name_list2":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v4}, Landroid/util/jar/StrictJarFile;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 2514
    .local v9, "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/zip/ZipEntry;>;"
    const/4 v10, 0x0

    .line 2515
    .local v10, "i":I
    :goto_2f
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_33} :catch_14e
    .catchall {:try_start_18 .. :try_end_33} :catchall_14c

    if-eqz v11, :cond_8a

    .line 2517
    add-int/lit8 v10, v10, 0x1

    .line 2518
    :try_start_37
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/zip/ZipEntry;

    .line 2519
    .local v11, "zipEntry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v11}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v12

    .line 2520
    .local v12, "name":Ljava/lang/String;
    const-string v13, "META-INF/"

    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4a

    .line 2521
    goto :goto_2f

    .line 2522
    :cond_4a
    const-string v13, "SEC-INF/"

    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_53

    .line 2523
    goto :goto_2f

    .line 2524
    :cond_53
    const-string/jumbo v13, "token/"

    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_5d

    .line 2525
    goto :goto_2f

    .line 2526
    :cond_5d
    invoke-direct {v1, v4, v11, v3}, Lcom/android/server/asks/ASKSManagerService;->loadCertificates(Landroid/util/jar/StrictJarFile;Ljava/util/zip/ZipEntry;Ljava/security/MessageDigest;)[Ljava/security/cert/Certificate;

    .line 2527
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v13

    invoke-direct {v1, v13}, Lcom/android/server/asks/ASKSManagerService;->convertToHex([B)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v12, v13}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2528
    const v13, 0xc350

    if-lt v10, v13, :cond_7e

    .line 2529
    const/4 v10, 0x0

    .line 2530
    invoke-virtual {v8}, Ljava/util/LinkedHashMap;->clone()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/LinkedHashMap;

    move-object v0, v13

    .line 2531
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2532
    invoke-virtual {v8}, Ljava/util/LinkedHashMap;->clear()V

    .line 2534
    .end local v11    # "zipEntry":Ljava/util/zip/ZipEntry;
    .end local v12    # "name":Ljava/lang/String;
    :cond_7e
    goto :goto_2f

    .line 2578
    .end local v0    # "local_name_list2":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6    # "array_name_sha1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v8    # "local_name_list":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v9    # "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/zip/ZipEntry;>;"
    .end local v10    # "i":I
    :catchall_7f
    move-exception v0

    move-object v2, v0

    move-object/from16 v17, v3

    goto/16 :goto_182

    .line 2573
    :catch_85
    move-exception v0

    move-object/from16 v17, v3

    goto/16 :goto_15c

    .line 2535
    .restart local v0    # "local_name_list2":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v6    # "array_name_sha1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v8    # "local_name_list":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v9    # "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/zip/ZipEntry;>;"
    .restart local v10    # "i":I
    :cond_8a
    if-eqz v10, :cond_9b

    .line 2537
    invoke-virtual {v8}, Ljava/util/LinkedHashMap;->clone()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/LinkedHashMap;

    move-object v0, v11

    .line 2538
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2539
    invoke-virtual {v8}, Ljava/util/LinkedHashMap;->clear()V
    :try_end_99
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_99} :catch_85
    .catchall {:try_start_37 .. :try_end_99} :catchall_7f

    move-object v11, v0

    goto :goto_9c

    .line 2535
    :cond_9b
    move-object v11, v0

    .line 2542
    .end local v0    # "local_name_list2":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local v11, "local_name_list2":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_9c
    nop

    .line 2543
    :try_start_9d
    invoke-virtual {v4}, Landroid/util/jar/StrictJarFile;->close()V
    :try_end_a0
    .catch Ljava/io/IOException; {:try_start_9d .. :try_end_a0} :catch_14e
    .catchall {:try_start_9d .. :try_end_a0} :catchall_14c

    .line 2545
    const/4 v12, 0x0

    .line 2547
    .local v12, "mdsha256":Ljava/security/MessageDigest;
    :try_start_a1
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0
    :try_end_a7
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_a1 .. :try_end_a7} :catch_a9
    .catch Ljava/io/IOException; {:try_start_a1 .. :try_end_a7} :catch_85
    .catchall {:try_start_a1 .. :try_end_a7} :catchall_7f

    move-object v12, v0

    .line 2550
    goto :goto_ad

    .line 2548
    :catch_a9
    move-exception v0

    .line 2549
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    :try_start_aa
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 2552
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :goto_ad
    const/4 v0, 0x0

    move v13, v0

    .local v13, "ii":I
    :goto_af
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v13, v0, :cond_11e

    .line 2553
    new-instance v0, Ljava/util/TreeMap;

    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map;

    invoke-direct {v0, v14}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    move-object v14, v0

    .line 2554
    .local v14, "treeMap":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v14}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v15, v0

    .line 2557
    .local v15, "treeMapIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_ca
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_116

    .line 2558
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object/from16 v16, v0

    .line 2559
    .local v16, "key":Ljava/lang/String;
    move-object/from16 v5, v16

    .end local v16    # "key":Ljava/lang/String;
    .local v5, "key":Ljava/lang/String;
    invoke-virtual {v14, v5}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_e0
    .catch Ljava/io/IOException; {:try_start_aa .. :try_end_e0} :catch_14e
    .catchall {:try_start_aa .. :try_end_e0} :catchall_14c

    move-object/from16 v16, v0

    .line 2562
    .local v16, "value":Ljava/lang/String;
    :try_start_e2
    const-string v0, "ISO-8859-1"
    :try_end_e4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_e2 .. :try_end_e4} :catch_107
    .catch Ljava/io/IOException; {:try_start_e2 .. :try_end_e4} :catch_14e
    .catchall {:try_start_e2 .. :try_end_e4} :catchall_14c

    move-object/from16 v17, v3

    move-object/from16 v3, v16

    .end local v16    # "value":Ljava/lang/String;
    .local v3, "value":Ljava/lang/String;
    .local v17, "md":Ljava/security/MessageDigest;
    :try_start_e8
    invoke-virtual {v3, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_ec
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_e8 .. :try_end_ec} :catch_100
    .catch Ljava/io/IOException; {:try_start_e8 .. :try_end_ec} :catch_14a
    .catchall {:try_start_e8 .. :try_end_ec} :catchall_180

    move-object/from16 v16, v5

    .end local v5    # "key":Ljava/lang/String;
    .local v16, "key":Ljava/lang/String;
    :try_start_ee
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5
    :try_end_f2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_ee .. :try_end_f2} :catch_fb
    .catch Ljava/io/IOException; {:try_start_ee .. :try_end_f2} :catch_14a
    .catchall {:try_start_ee .. :try_end_f2} :catchall_180

    move-object/from16 v18, v3

    const/4 v3, 0x0

    .end local v3    # "value":Ljava/lang/String;
    .local v18, "value":Ljava/lang/String;
    :try_start_f5
    invoke-virtual {v12, v0, v3, v5}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_f8
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_f5 .. :try_end_f8} :catch_f9
    .catch Ljava/io/IOException; {:try_start_f5 .. :try_end_f8} :catch_14a
    .catchall {:try_start_f5 .. :try_end_f8} :catchall_180

    .line 2565
    goto :goto_112

    .line 2563
    :catch_f9
    move-exception v0

    goto :goto_10f

    .end local v18    # "value":Ljava/lang/String;
    .restart local v3    # "value":Ljava/lang/String;
    :catch_fb
    move-exception v0

    move-object/from16 v18, v3

    const/4 v3, 0x0

    .end local v3    # "value":Ljava/lang/String;
    .restart local v18    # "value":Ljava/lang/String;
    goto :goto_10f

    .end local v16    # "key":Ljava/lang/String;
    .end local v18    # "value":Ljava/lang/String;
    .restart local v3    # "value":Ljava/lang/String;
    .restart local v5    # "key":Ljava/lang/String;
    :catch_100
    move-exception v0

    move-object/from16 v18, v3

    move-object/from16 v16, v5

    const/4 v3, 0x0

    .end local v3    # "value":Ljava/lang/String;
    .end local v5    # "key":Ljava/lang/String;
    .restart local v16    # "key":Ljava/lang/String;
    .restart local v18    # "value":Ljava/lang/String;
    goto :goto_10f

    .end local v17    # "md":Ljava/security/MessageDigest;
    .end local v18    # "value":Ljava/lang/String;
    .local v3, "md":Ljava/security/MessageDigest;
    .restart local v5    # "key":Ljava/lang/String;
    .local v16, "value":Ljava/lang/String;
    :catch_107
    move-exception v0

    move-object/from16 v17, v3

    move-object/from16 v18, v16

    const/4 v3, 0x0

    move-object/from16 v16, v5

    .line 2564
    .end local v3    # "md":Ljava/security/MessageDigest;
    .end local v5    # "key":Ljava/lang/String;
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    .local v16, "key":Ljava/lang/String;
    .restart local v17    # "md":Ljava/security/MessageDigest;
    .restart local v18    # "value":Ljava/lang/String;
    :goto_10f
    :try_start_10f
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 2566
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v16    # "key":Ljava/lang/String;
    .end local v18    # "value":Ljava/lang/String;
    :goto_112
    move v5, v3

    move-object/from16 v3, v17

    goto :goto_ca

    .line 2557
    .end local v17    # "md":Ljava/security/MessageDigest;
    .restart local v3    # "md":Ljava/security/MessageDigest;
    :cond_116
    move-object/from16 v17, v3

    move v3, v5

    .line 2552
    .end local v3    # "md":Ljava/security/MessageDigest;
    .end local v14    # "treeMap":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v15    # "treeMapIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v17    # "md":Ljava/security/MessageDigest;
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v3, v17

    goto :goto_af

    .end local v17    # "md":Ljava/security/MessageDigest;
    .restart local v3    # "md":Ljava/security/MessageDigest;
    :cond_11e
    move-object/from16 v17, v3

    .line 2568
    .end local v3    # "md":Ljava/security/MessageDigest;
    .end local v13    # "ii":I
    .restart local v17    # "md":Ljava/security/MessageDigest;
    invoke-virtual {v12}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/server/asks/ASKSManagerService;->convertToHex([B)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    .line 2569
    .local v3, "HASH":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " advanced hash::"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13d
    .catch Ljava/io/IOException; {:try_start_10f .. :try_end_13d} :catch_14a
    .catchall {:try_start_10f .. :try_end_13d} :catchall_180

    .line 2570
    nop

    .line 2579
    nop

    .line 2580
    :try_start_13f
    invoke-virtual {v4}, Landroid/util/jar/StrictJarFile;->close()V
    :try_end_142
    .catch Ljava/io/IOException; {:try_start_13f .. :try_end_142} :catch_143

    .line 2584
    goto :goto_149

    .line 2582
    :catch_143
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 2583
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 2570
    .end local v0    # "e":Ljava/io/IOException;
    :goto_149
    return-object v3

    .line 2573
    .end local v3    # "HASH":Ljava/lang/String;
    .end local v6    # "array_name_sha1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v8    # "local_name_list":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v9    # "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/zip/ZipEntry;>;"
    .end local v10    # "i":I
    .end local v11    # "local_name_list2":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v12    # "mdsha256":Ljava/security/MessageDigest;
    :catch_14a
    move-exception v0

    goto :goto_15c

    .line 2578
    .end local v17    # "md":Ljava/security/MessageDigest;
    .local v3, "md":Ljava/security/MessageDigest;
    :catchall_14c
    move-exception v0

    goto :goto_153

    .line 2573
    :catch_14e
    move-exception v0

    goto :goto_15a

    .line 2578
    :catchall_150
    move-exception v0

    move-object/from16 v7, p1

    :goto_153
    move-object/from16 v17, v3

    move-object v2, v0

    .end local v3    # "md":Ljava/security/MessageDigest;
    .restart local v17    # "md":Ljava/security/MessageDigest;
    goto :goto_182

    .line 2573
    .end local v17    # "md":Ljava/security/MessageDigest;
    .restart local v3    # "md":Ljava/security/MessageDigest;
    :catch_157
    move-exception v0

    move-object/from16 v7, p1

    :goto_15a
    move-object/from16 v17, v3

    .line 2575
    .end local v3    # "md":Ljava/security/MessageDigest;
    .local v0, "m":Ljava/io/IOException;
    .restart local v17    # "md":Ljava/security/MessageDigest;
    :goto_15c
    :try_start_15c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " ERROR: AASA_VerifyToken check hash "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_170
    .catchall {:try_start_15c .. :try_end_170} :catchall_180

    .line 2579
    .end local v0    # "m":Ljava/io/IOException;
    if-eqz v4, :cond_17d

    .line 2580
    :try_start_172
    invoke-virtual {v4}, Landroid/util/jar/StrictJarFile;->close()V
    :try_end_175
    .catch Ljava/io/IOException; {:try_start_172 .. :try_end_175} :catch_176

    goto :goto_17d

    .line 2582
    :catch_176
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 2583
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 2585
    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_17e

    .line 2584
    :cond_17d
    :goto_17d
    nop

    .line 2586
    :goto_17e
    const/4 v0, 0x0

    return-object v0

    .line 2578
    :catchall_180
    move-exception v0

    move-object v2, v0

    .line 2579
    :goto_182
    if-eqz v4, :cond_18f

    .line 2580
    :try_start_184
    invoke-virtual {v4}, Landroid/util/jar/StrictJarFile;->close()V
    :try_end_187
    .catch Ljava/io/IOException; {:try_start_184 .. :try_end_187} :catch_188

    goto :goto_18f

    .line 2582
    :catch_188
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    .line 2583
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_190

    .line 2584
    .end local v0    # "e":Ljava/io/IOException;
    :cond_18f
    :goto_18f
    nop

    .line 2585
    :goto_190
    throw v2
.end method

.method private getApkFileHash(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "codePath"    # Ljava/lang/String;

    .line 2480
    const/4 v0, 0x0

    .line 2481
    .local v0, "ret":Ljava/lang/String;
    const/4 v1, 0x0

    .line 2484
    .local v1, "apkHash":[B
    :try_start_2
    invoke-direct {p0, p1}, Lcom/android/server/asks/ASKSManagerService;->getApkFileHashBytes(Ljava/lang/String;)[B

    move-result-object v2

    move-object v1, v2

    .line 2485
    if-eqz v1, :cond_13

    .line 2486
    invoke-direct {p0, v1}, Lcom/android/server/asks/ASKSManagerService;->convertToHex([B)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/asks/ASKSManagerService;->getSHA256ForPkgName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    goto :goto_16

    .line 2488
    :cond_13
    const-string v2, ""
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_15} :catch_17

    move-object v0, v2

    .line 2491
    :goto_16
    goto :goto_1a

    .line 2489
    :catch_17
    move-exception v2

    .line 2490
    .local v2, "e":Ljava/io/IOException;
    const-string v0, ""

    .line 2492
    .end local v2    # "e":Ljava/io/IOException;
    :goto_1a
    return-object v0
.end method

.method private getApkFileHashBytes(Ljava/lang/String;)[B
    .registers 10
    .param p1, "codePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2442
    const/4 v0, 0x0

    .line 2443
    .local v0, "ret":[B
    const/4 v1, 0x0

    .line 2445
    .local v1, "md":Ljava/security/MessageDigest;
    :try_start_2
    const-string v2, "SHA-256"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2
    :try_end_8
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_8} :catch_6a

    move-object v1, v2

    .line 2449
    nop

    .line 2451
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2452
    .local v2, "file":Ljava/io/File;
    if-eqz v1, :cond_69

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_69

    .line 2453
    const/4 v3, 0x0

    .line 2455
    .local v3, "ios":Ljava/io/InputStream;
    const/16 v4, 0x1000

    :try_start_1a
    new-array v4, v4, [B

    .line 2456
    .local v4, "buffer":[B
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v3, v5

    .line 2457
    const/4 v5, 0x0

    .line 2458
    .local v5, "read":I
    :goto_23
    invoke-virtual {v3, v4}, Ljava/io/InputStream;->read([B)I

    move-result v6

    move v5, v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_30

    .line 2459
    const/4 v6, 0x0

    invoke-virtual {v1, v4, v6, v5}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_23

    .line 2461
    :cond_30
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v6
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_34} :catch_3d
    .catchall {:try_start_1a .. :try_end_34} :catchall_3b

    move-object v0, v6

    .line 2470
    .end local v4    # "buffer":[B
    .end local v5    # "read":I
    :try_start_35
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_38} :catch_39

    .line 2472
    goto :goto_69

    .line 2471
    :catch_39
    move-exception v4

    .line 2473
    goto :goto_69

    .line 2469
    :catchall_3b
    move-exception v4

    goto :goto_5f

    .line 2463
    :catch_3d
    move-exception v4

    .line 2465
    .local v4, "e":Ljava/io/IOException;
    :try_start_3e
    const-string v5, "AASA_ASKSManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " ERROR: getApkFileHash:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_54
    .catchall {:try_start_3e .. :try_end_54} :catchall_3b

    .line 2466
    nop

    .line 2470
    if-eqz v3, :cond_5d

    :try_start_57
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_5a} :catch_5b

    goto :goto_5d

    .line 2471
    :catch_5b
    move-exception v5

    goto :goto_5e

    .line 2472
    :cond_5d
    :goto_5d
    nop

    .line 2466
    :goto_5e
    return-object v0

    .line 2470
    .end local v4    # "e":Ljava/io/IOException;
    :goto_5f
    if-eqz v3, :cond_67

    :try_start_61
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_64} :catch_65

    goto :goto_67

    .line 2471
    :catch_65
    move-exception v5

    goto :goto_68

    .line 2472
    :cond_67
    :goto_67
    nop

    .line 2473
    :goto_68
    throw v4

    .line 2475
    .end local v3    # "ios":Ljava/io/InputStream;
    :cond_69
    :goto_69
    return-object v0

    .line 2446
    .end local v2    # "file":Ljava/io/File;
    :catch_6a
    move-exception v2

    .line 2447
    .local v2, "e1":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v2}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 2448
    return-object v0
.end method

.method private getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;
    .registers 2

    .line 273
    iget-object v0, p0, Lcom/android/server/asks/ASKSManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    if-nez v0, :cond_e

    .line 274
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    iput-object v0, p0, Lcom/android/server/asks/ASKSManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 276
    :cond_e
    iget-object v0, p0, Lcom/android/server/asks/ASKSManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    return-object v0
.end method

.method private getRestrictDataFromXML(Ljava/util/HashMap;Lcom/android/server/asks/ASKSManagerService$ASKSSession;)V
    .registers 25
    .param p2, "session"    # Lcom/android/server/asks/ASKSManagerService$ASKSSession;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/asks/ASKSManagerService$Restrict;",
            ">;",
            "Lcom/android/server/asks/ASKSManagerService$ASKSSession;",
            ")V"
        }
    .end annotation

    .line 2787
    .local p1, "store":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/asks/ASKSManagerService$Restrict;>;"
    move-object/from16 v1, p0

    const-string v2, "/data/system/.aasa/AASApolicy/ASKSRNEW.xml"

    .line 2789
    .local v2, "path":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v3, v0

    .line 2790
    .local v3, "file":Ljava/io/File;
    const/4 v4, 0x0

    .line 2792
    .local v4, "abnormalRule":Z
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    const-string v5, "AASA_ASKSManager_RESTRICTED"

    if-nez v0, :cond_1a

    .line 2793
    const-string v0, "There is no restict rule in system."

    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2794
    const/4 v0, 0x0

    .line 2795
    .end local p1    # "store":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/asks/ASKSManagerService$Restrict;>;"
    .local v0, "store":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/asks/ASKSManagerService$Restrict;>;"
    return-void

    .line 2802
    .end local v0    # "store":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/asks/ASKSManagerService$Restrict;>;"
    .restart local p1    # "store":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/asks/ASKSManagerService$Restrict;>;"
    :cond_1a
    :try_start_1a
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 2803
    .local v0, "parser":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 2805
    .local v6, "fileReader":Ljava/io/FileReader;
    invoke-interface {v0, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 2808
    :goto_2a
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    move v8, v7

    .local v8, "eventType":I
    const/4 v9, 0x2

    const/4 v10, 0x1

    if-eq v7, v9, :cond_36

    if-eq v8, v10, :cond_36

    goto :goto_2a

    .line 2813
    :cond_36
    const/4 v7, 0x0

    .line 2814
    .local v7, "versionString":Ljava/lang/String;
    const/4 v9, 0x0

    .line 2815
    .local v9, "pkgName":Ljava/lang/String;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 2817
    .local v11, "certList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v12, 0x0

    .line 2819
    .local v12, "r":Lcom/android/server/asks/ASKSManagerService$Restrict;
    const-string v13, "VERSION"

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13
    :try_end_48
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1a .. :try_end_48} :catch_172
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_48} :catch_169

    const-string/jumbo v14, "value"

    const/4 v15, 0x0

    if-eqz v13, :cond_62

    .line 2820
    :try_start_4e
    invoke-interface {v0, v15, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13
    :try_end_52
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4e .. :try_end_52} :catch_5b
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_52} :catch_54

    move-object v7, v13

    goto :goto_62

    .line 2873
    .end local v0    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "fileReader":Ljava/io/FileReader;
    .end local v7    # "versionString":Ljava/lang/String;
    .end local v8    # "eventType":I
    .end local v9    # "pkgName":Ljava/lang/String;
    .end local v11    # "certList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v12    # "r":Lcom/android/server/asks/ASKSManagerService$Restrict;
    :catch_54
    move-exception v0

    move-object/from16 v13, p2

    :goto_57
    move-object/from16 v17, v2

    goto/16 :goto_16e

    .line 2871
    :catch_5b
    move-exception v0

    move-object/from16 v13, p2

    :goto_5e
    move-object/from16 v17, v2

    goto/16 :goto_177

    .line 2823
    .restart local v0    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6    # "fileReader":Ljava/io/FileReader;
    .restart local v7    # "versionString":Ljava/lang/String;
    .restart local v8    # "eventType":I
    .restart local v9    # "pkgName":Ljava/lang/String;
    .restart local v11    # "certList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v12    # "r":Lcom/android/server/asks/ASKSManagerService$Restrict;
    :cond_62
    :goto_62
    :try_start_62
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v13
    :try_end_66
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_62 .. :try_end_66} :catch_172
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_66} :catch_169

    move v8, v13

    if-eq v13, v10, :cond_164

    .line 2825
    const/4 v13, 0x3

    const-string v15, "PACKAGE"

    if-ne v8, v13, :cond_10d

    .line 2826
    :try_start_6e
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v15, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13
    :try_end_76
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6e .. :try_end_76} :catch_172
    .catch Ljava/io/IOException; {:try_start_6e .. :try_end_76} :catch_169

    if-eqz v13, :cond_108

    .line 2827
    if-eqz v9, :cond_f5

    :try_start_7a
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v13
    :try_end_7e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7a .. :try_end_7e} :catch_f0
    .catch Ljava/io/IOException; {:try_start_7a .. :try_end_7e} :catch_eb

    if-eqz v13, :cond_f5

    if-ne v4, v10, :cond_8a

    move-object/from16 v15, p1

    move-object/from16 v13, p2

    move-object/from16 v17, v2

    goto/16 :goto_fb

    .line 2834
    :cond_8a
    move-object/from16 v13, p2

    :try_start_8c
    invoke-direct {v1, v9, v11, v13}, Lcom/android/server/asks/ASKSManagerService;->isTargetPackage(Ljava/lang/String;Ljava/util/ArrayList;Lcom/android/server/asks/ASKSManagerService$ASKSSession;)Z

    move-result v15
    :try_end_90
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8c .. :try_end_90} :catch_e6
    .catch Ljava/io/IOException; {:try_start_8c .. :try_end_90} :catch_e1

    if-eqz v15, :cond_d4

    .line 2836
    if-nez v12, :cond_ab

    .line 2838
    :try_start_94
    new-instance v15, Lcom/android/server/asks/ASKSManagerService$Restrict;

    const/16 v18, 0x0

    const/16 v19, 0x0

    const-string v20, "Policy"

    const/16 v21, 0x0

    move-object/from16 v16, v15

    move-object/from16 v17, v7

    invoke-direct/range {v16 .. v21}, Lcom/android/server/asks/ASKSManagerService$Restrict;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_a5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_94 .. :try_end_a5} :catch_a9
    .catch Ljava/io/IOException; {:try_start_94 .. :try_end_a5} :catch_a7

    move-object v12, v15

    goto :goto_ab

    .line 2873
    .end local v0    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "fileReader":Ljava/io/FileReader;
    .end local v7    # "versionString":Ljava/lang/String;
    .end local v8    # "eventType":I
    .end local v9    # "pkgName":Ljava/lang/String;
    .end local v11    # "certList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v12    # "r":Lcom/android/server/asks/ASKSManagerService$Restrict;
    :catch_a7
    move-exception v0

    goto :goto_57

    .line 2871
    :catch_a9
    move-exception v0

    goto :goto_5e

    .line 2840
    .restart local v0    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6    # "fileReader":Ljava/io/FileReader;
    .restart local v7    # "versionString":Ljava/lang/String;
    .restart local v8    # "eventType":I
    .restart local v9    # "pkgName":Ljava/lang/String;
    .restart local v11    # "certList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v12    # "r":Lcom/android/server/asks/ASKSManagerService$Restrict;
    :cond_ab
    :goto_ab
    move-object/from16 v15, p1

    :try_start_ad
    invoke-virtual {v15, v9, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2842
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_b8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_ad .. :try_end_b8} :catch_d1
    .catch Ljava/io/IOException; {:try_start_ad .. :try_end_b8} :catch_ce

    move-object/from16 v17, v2

    .end local v2    # "path":Ljava/lang/String;
    .local v17, "path":Ljava/lang/String;
    :try_start_ba
    const-string v2, " : "

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Lcom/android/server/asks/ASKSManagerService$Restrict;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d8

    .line 2873
    .end local v0    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "fileReader":Ljava/io/FileReader;
    .end local v7    # "versionString":Ljava/lang/String;
    .end local v8    # "eventType":I
    .end local v9    # "pkgName":Ljava/lang/String;
    .end local v11    # "certList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v12    # "r":Lcom/android/server/asks/ASKSManagerService$Restrict;
    .end local v17    # "path":Ljava/lang/String;
    .restart local v2    # "path":Ljava/lang/String;
    :catch_ce
    move-exception v0

    goto/16 :goto_16c

    .line 2871
    :catch_d1
    move-exception v0

    goto/16 :goto_175

    .line 2834
    .restart local v0    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6    # "fileReader":Ljava/io/FileReader;
    .restart local v7    # "versionString":Ljava/lang/String;
    .restart local v8    # "eventType":I
    .restart local v9    # "pkgName":Ljava/lang/String;
    .restart local v11    # "certList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v12    # "r":Lcom/android/server/asks/ASKSManagerService$Restrict;
    :cond_d4
    move-object/from16 v15, p1

    move-object/from16 v17, v2

    .line 2846
    .end local v2    # "path":Ljava/lang/String;
    .restart local v17    # "path":Ljava/lang/String;
    :goto_d8
    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 2847
    const/4 v12, 0x0

    .line 2849
    move-object/from16 v2, v17

    const/4 v10, 0x1

    const/4 v15, 0x0

    goto :goto_62

    .line 2873
    .end local v0    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "fileReader":Ljava/io/FileReader;
    .end local v7    # "versionString":Ljava/lang/String;
    .end local v8    # "eventType":I
    .end local v9    # "pkgName":Ljava/lang/String;
    .end local v11    # "certList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v12    # "r":Lcom/android/server/asks/ASKSManagerService$Restrict;
    .end local v17    # "path":Ljava/lang/String;
    .restart local v2    # "path":Ljava/lang/String;
    :catch_e1
    move-exception v0

    move-object/from16 v15, p1

    goto/16 :goto_16c

    .line 2871
    :catch_e6
    move-exception v0

    move-object/from16 v15, p1

    goto/16 :goto_175

    .line 2873
    :catch_eb
    move-exception v0

    move-object/from16 v15, p1

    goto/16 :goto_16a

    .line 2871
    :catch_f0
    move-exception v0

    move-object/from16 v15, p1

    goto/16 :goto_173

    .line 2827
    .restart local v0    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6    # "fileReader":Ljava/io/FileReader;
    .restart local v7    # "versionString":Ljava/lang/String;
    .restart local v8    # "eventType":I
    .restart local v9    # "pkgName":Ljava/lang/String;
    .restart local v11    # "certList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v12    # "r":Lcom/android/server/asks/ASKSManagerService$Restrict;
    :cond_f5
    move-object/from16 v15, p1

    move-object/from16 v13, p2

    move-object/from16 v17, v2

    .line 2828
    .end local v2    # "path":Ljava/lang/String;
    .restart local v17    # "path":Ljava/lang/String;
    :goto_fb
    const-string v2, "The package information is wrong."

    invoke-static {v5, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2829
    const/4 v12, 0x0

    .line 2830
    const/4 v4, 0x0

    .line 2831
    move-object/from16 v2, v17

    const/4 v10, 0x1

    const/4 v15, 0x0

    goto/16 :goto_62

    .line 2826
    .end local v17    # "path":Ljava/lang/String;
    .restart local v2    # "path":Ljava/lang/String;
    :cond_108
    move-object/from16 v13, p2

    move-object/from16 v17, v2

    .end local v2    # "path":Ljava/lang/String;
    .restart local v17    # "path":Ljava/lang/String;
    goto :goto_11a

    .line 2851
    .end local v17    # "path":Ljava/lang/String;
    .restart local v2    # "path":Ljava/lang/String;
    :cond_10d
    move-object/from16 v13, p2

    move-object/from16 v17, v2

    .end local v2    # "path":Ljava/lang/String;
    .restart local v17    # "path":Ljava/lang/String;
    const/4 v2, 0x4

    if-ne v8, v2, :cond_11a

    .line 2852
    move-object/from16 v2, v17

    const/4 v10, 0x1

    const/4 v15, 0x0

    goto/16 :goto_62

    .line 2855
    :cond_11a
    :goto_11a
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 2857
    .local v2, "tag":Ljava/lang/String;
    invoke-virtual {v15, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_12e

    .line 2858
    const-string/jumbo v10, "name"

    const/4 v15, 0x0

    invoke-interface {v0, v15, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v9, v10

    goto :goto_15a

    .line 2859
    :cond_12e
    const-string v10, "CERT"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_13f

    .line 2860
    const/4 v10, 0x0

    invoke-interface {v0, v10, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_15a

    .line 2861
    :cond_13f
    const/4 v10, 0x0

    const-string v15, "RESTRICT"

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v15, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_15a

    .line 2862
    new-instance v10, Lcom/android/server/asks/ASKSManagerService$Restrict;

    invoke-direct {v10}, Lcom/android/server/asks/ASKSManagerService$Restrict;-><init>()V

    .line 2863
    .end local v12    # "r":Lcom/android/server/asks/ASKSManagerService$Restrict;
    .local v10, "r":Lcom/android/server/asks/ASKSManagerService$Restrict;
    const-string v12, "Policy"

    invoke-virtual {v10, v12}, Lcom/android/server/asks/ASKSManagerService$Restrict;->setFrom(Ljava/lang/String;)V

    .line 2864
    invoke-direct {v1, v0, v10, v7}, Lcom/android/server/asks/ASKSManagerService;->readRestrictRule(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/asks/ASKSManagerService$Restrict;Ljava/lang/String;)V
    :try_end_159
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_ba .. :try_end_159} :catch_162
    .catch Ljava/io/IOException; {:try_start_ba .. :try_end_159} :catch_160

    .line 2865
    move-object v12, v10

    .line 2870
    .end local v2    # "tag":Ljava/lang/String;
    .end local v10    # "r":Lcom/android/server/asks/ASKSManagerService$Restrict;
    .restart local v12    # "r":Lcom/android/server/asks/ASKSManagerService$Restrict;
    :cond_15a
    :goto_15a
    move-object/from16 v2, v17

    const/4 v10, 0x1

    const/4 v15, 0x0

    goto/16 :goto_62

    .line 2873
    .end local v0    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "fileReader":Ljava/io/FileReader;
    .end local v7    # "versionString":Ljava/lang/String;
    .end local v8    # "eventType":I
    .end local v9    # "pkgName":Ljava/lang/String;
    .end local v11    # "certList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v12    # "r":Lcom/android/server/asks/ASKSManagerService$Restrict;
    :catch_160
    move-exception v0

    goto :goto_16e

    .line 2871
    :catch_162
    move-exception v0

    goto :goto_177

    .line 2823
    .end local v17    # "path":Ljava/lang/String;
    .restart local v0    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .local v2, "path":Ljava/lang/String;
    .restart local v6    # "fileReader":Ljava/io/FileReader;
    .restart local v7    # "versionString":Ljava/lang/String;
    .restart local v8    # "eventType":I
    .restart local v9    # "pkgName":Ljava/lang/String;
    .restart local v11    # "certList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v12    # "r":Lcom/android/server/asks/ASKSManagerService$Restrict;
    :cond_164
    move-object/from16 v13, p2

    move-object/from16 v17, v2

    .line 2875
    .end local v2    # "path":Ljava/lang/String;
    .end local v7    # "versionString":Ljava/lang/String;
    .end local v8    # "eventType":I
    .end local v9    # "pkgName":Ljava/lang/String;
    .end local v11    # "certList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v12    # "r":Lcom/android/server/asks/ASKSManagerService$Restrict;
    .restart local v17    # "path":Ljava/lang/String;
    goto :goto_17b

    .line 2873
    .end local v0    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "fileReader":Ljava/io/FileReader;
    .end local v17    # "path":Ljava/lang/String;
    .restart local v2    # "path":Ljava/lang/String;
    :catch_169
    move-exception v0

    :goto_16a
    move-object/from16 v13, p2

    :goto_16c
    move-object/from16 v17, v2

    .line 2874
    .end local v2    # "path":Ljava/lang/String;
    .local v0, "e":Ljava/io/IOException;
    .restart local v17    # "path":Ljava/lang/String;
    :goto_16e
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_17b

    .line 2871
    .end local v0    # "e":Ljava/io/IOException;
    .end local v17    # "path":Ljava/lang/String;
    .restart local v2    # "path":Ljava/lang/String;
    :catch_172
    move-exception v0

    :goto_173
    move-object/from16 v13, p2

    :goto_175
    move-object/from16 v17, v2

    .line 2872
    .end local v2    # "path":Ljava/lang/String;
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v17    # "path":Ljava/lang/String;
    :goto_177
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 2875
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    nop

    .line 2877
    :goto_17b
    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_183

    .line 2878
    const/4 v0, 0x0

    .end local p1    # "store":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/asks/ASKSManagerService$Restrict;>;"
    .local v0, "store":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/asks/ASKSManagerService$Restrict;>;"
    goto :goto_185

    .line 2877
    .end local v0    # "store":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/asks/ASKSManagerService$Restrict;>;"
    .restart local p1    # "store":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/asks/ASKSManagerService$Restrict;>;"
    :cond_183
    move-object/from16 v0, p1

    .line 2880
    .end local p1    # "store":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/asks/ASKSManagerService$Restrict;>;"
    .restart local v0    # "store":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/asks/ASKSManagerService$Restrict;>;"
    :goto_185
    return-void
.end method

.method private getSHA256(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 2590
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 2591
    .local v0, "md":Ljava/security/MessageDigest;
    const-string v1, "ISO-8859-1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/security/MessageDigest;->update([BII)V

    .line 2592
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 2593
    .local v1, "sha1hash":[B
    invoke-direct {p0, v1}, Lcom/android/server/asks/ASKSManagerService;->convertToHex([B)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getSHA256ForPkgName(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "text"    # Ljava/lang/String;

    .line 2431
    const-string v0, ""

    .line 2433
    .local v0, "hashVal":Ljava/lang/String;
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "AASAASKS"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/asks/ASKSManagerService;->getSHA256(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_17
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_17} :catch_1b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_17} :catch_19

    move-object v0, v1

    .line 2436
    :goto_18
    goto :goto_1d

    .line 2435
    :catch_19
    move-exception v1

    goto :goto_1d

    .line 2434
    :catch_1b
    move-exception v1

    goto :goto_18

    .line 2437
    :goto_1d
    return-object v0
.end method

.method private getTokenContents([BI)[B
    .registers 12
    .param p1, "contents"    # [B
    .param p2, "keySize"    # I

    .line 2060
    const/4 v0, 0x7

    new-array v0, v0, [B

    .line 2062
    .local v0, "tempBuf":[B
    const/4 v1, 0x0

    .line 2063
    .local v1, "numberIndex":I
    const/4 v2, 0x0

    .line 2065
    .local v2, "isError":Z
    move v3, p2

    .local v3, "ii":I
    :goto_6
    aget-byte v4, p1, v3

    const/16 v5, 0x2c

    if-eq v4, v5, :cond_1a

    .line 2067
    const/4 v4, 0x5

    if-lt v1, v4, :cond_11

    .line 2070
    const/4 v2, 0x1

    .line 2071
    goto :goto_1a

    .line 2073
    :cond_11
    aget-byte v4, p1, v3

    aput-byte v4, v0, v1

    .line 2065
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 2076
    .end local v3    # "ii":I
    :cond_1a
    :goto_1a
    const/4 v3, 0x1

    if-ne v2, v3, :cond_24

    .line 2077
    const-string v3, "22"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    return-object v3

    .line 2080
    :cond_24
    new-array v3, v1, [B

    .line 2081
    .local v3, "number":[B
    const/4 v4, 0x0

    invoke-static {v0, v4, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2082
    const/4 v5, 0x0

    .line 2084
    .local v5, "sizeOfcontents":I
    :try_start_2b
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v3}, Ljava/lang/String;-><init>([B)V

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6
    :try_end_34
    .catch Ljava/lang/NumberFormatException; {:try_start_2b .. :try_end_34} :catch_36

    move v5, v6

    .line 2087
    goto :goto_3a

    .line 2085
    :catch_36
    move-exception v6

    .line 2086
    .local v6, "ne":Ljava/lang/NumberFormatException;
    invoke-virtual {v6}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 2088
    .end local v6    # "ne":Ljava/lang/NumberFormatException;
    :goto_3a
    new-array v6, v5, [B

    .line 2089
    .local v6, "mTokenContents":[B
    add-int v7, p2, v1

    const-string v8, ","

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    invoke-static {p1, v7, v6, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2091
    return-object v6
.end method

.method private getTrustedFile()[Ljava/lang/String;
    .registers 7

    .line 3260
    const-string v0, "AASA_ASKSManager_SECURETIME"

    const-string/jumbo v1, "getTrustedFile : "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3261
    const/4 v0, 0x0

    .line 3262
    .local v0, "list":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 3263
    .local v1, "fr":Ljava/io/FileReader;
    const/4 v2, 0x0

    .line 3266
    .local v2, "br":Ljava/io/BufferedReader;
    const/4 v3, 0x3

    :try_start_c
    new-instance v4, Ljava/io/FileReader;

    const-string v5, "/data/system/.aasa/trustedTime"

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    move-object v1, v4

    .line 3267
    nop

    .line 3268
    new-instance v4, Ljava/io/BufferedReader;

    invoke-direct {v4, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v2, v4

    .line 3270
    nop

    .line 3271
    :cond_1c
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    move-object v5, v4

    .local v5, "readline":Ljava/lang/String;
    if-eqz v4, :cond_2f

    .line 3272
    const-string v4, ","

    invoke-virtual {v5, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .line 3273
    if-eqz v0, :cond_1c

    array-length v4, v0

    if-ne v4, v3, :cond_1c

    .line 3276
    :cond_2f
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_32} :catch_3d
    .catchall {:try_start_c .. :try_end_32} :catchall_3b

    .line 3283
    .end local v5    # "readline":Ljava/lang/String;
    if-eqz v2, :cond_3a

    .line 3284
    :try_start_34
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_37} :catch_38

    goto :goto_3a

    .line 3285
    :catch_38
    move-exception v4

    .line 3287
    goto :goto_47

    .line 3286
    :cond_3a
    :goto_3a
    goto :goto_47

    .line 3282
    :catchall_3b
    move-exception v3

    goto :goto_4f

    .line 3279
    :catch_3d
    move-exception v4

    .line 3280
    .local v4, "e":Ljava/io/IOException;
    :try_start_3e
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_41
    .catchall {:try_start_3e .. :try_end_41} :catchall_3b

    .line 3283
    .end local v4    # "e":Ljava/io/IOException;
    if-eqz v2, :cond_3a

    .line 3284
    :try_start_43
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_46} :catch_38

    goto :goto_3a

    .line 3289
    :goto_47
    if-eqz v0, :cond_4d

    array-length v4, v0

    if-ne v4, v3, :cond_4d

    .line 3290
    return-object v0

    .line 3292
    :cond_4d
    const/4 v3, 0x0

    return-object v3

    .line 3283
    :goto_4f
    if-eqz v2, :cond_57

    .line 3284
    :try_start_51
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_54} :catch_55

    goto :goto_57

    .line 3285
    :catch_55
    move-exception v4

    goto :goto_58

    .line 3286
    :cond_57
    :goto_57
    nop

    .line 3287
    :goto_58
    throw v3
.end method

.method private getTrustedToday()Ljava/lang/String;
    .registers 3

    .line 3302
    const-string/jumbo v0, "security.ASKS.time_value"

    const-string v1, "00000000"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3304
    .local v0, "trustedToday":Ljava/lang/String;
    if-eqz v0, :cond_11

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 3305
    :cond_11
    invoke-direct {p0}, Lcom/android/server/asks/ASKSManagerService;->getTrustedTodayInner()Ljava/lang/String;

    move-result-object v0

    .line 3308
    :cond_15
    return-object v0
.end method

.method private getTrustedTodayInner()Ljava/lang/String;
    .registers 11

    .line 3312
    invoke-direct {p0}, Lcom/android/server/asks/ASKSManagerService;->hasTrustedTime()Z

    move-result v0

    if-nez v0, :cond_f

    .line 3314
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/server/asks/ASKSManagerService;->convertMillsToString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3316
    :cond_f
    invoke-direct {p0}, Lcom/android/server/asks/ASKSManagerService;->getTrustedFile()[Ljava/lang/String;

    move-result-object v0

    .line 3318
    .local v0, "lists":[Ljava/lang/String;
    if-eqz v0, :cond_4b

    array-length v1, v0

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1a

    goto :goto_4b

    .line 3322
    :cond_1a
    const/4 v1, 0x1

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 3323
    .local v1, "trustedCurrent":J
    const/4 v3, 0x2

    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 3325
    .local v3, "elapsedtime":J
    sub-long v5, v1, v3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    add-long/2addr v5, v7

    .line 3327
    .local v5, "trustedToday":J
    invoke-direct {p0, v5, v6}, Lcom/android/server/asks/ASKSManagerService;->convertMillsToString(J)Ljava/lang/String;

    move-result-object v7

    .line 3328
    .local v7, "resultTime":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getElapsedToday : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "AASA_ASKSManager_SECURETIME"

    invoke-static {v9, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3329
    return-object v7

    .line 3320
    .end local v1    # "trustedCurrent":J
    .end local v3    # "elapsedtime":J
    .end local v5    # "trustedToday":J
    .end local v7    # "resultTime":Ljava/lang/String;
    :cond_4b
    :goto_4b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/android/server/asks/ASKSManagerService;->convertMillsToString(J)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getVaultKeeperManager()Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;
    .registers 2

    .line 281
    iget-object v0, p0, Lcom/android/server/asks/ASKSManagerService;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    if-nez v0, :cond_c

    .line 282
    const-string v0, "AASA"

    invoke-static {v0}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->getInstance(Ljava/lang/String;)Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/asks/ASKSManagerService;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    .line 284
    :cond_c
    iget-object v0, p0, Lcom/android/server/asks/ASKSManagerService;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    return-object v0
.end method

.method private hasTrustedTime()Z
    .registers 3

    .line 3252
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/.aasa/trustedTime"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 3253
    const/4 v0, 0x1

    return v0

    .line 3255
    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method private isASKSToken(Lcom/android/server/asks/ASKSManagerService$ASKSSession;Ljava/lang/String;)Z
    .registers 15
    .param p1, "session"    # Lcom/android/server/asks/ASKSManagerService$ASKSSession;
    .param p2, "ArchiveSourcePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1406
    const-string v0, "META-INF"

    const-string v1, " ERROR: AASA_ASKSIsToken "

    const-string v2, "AASA_ASKSManager"

    const-string v3, "SEC-INF"

    const/4 v4, 0x0

    .line 1407
    .local v4, "ret":Z
    const/4 v5, 0x0

    .line 1410
    .local v5, "tokenFile":Landroid/util/jar/StrictJarFile;
    :try_start_a
    new-instance v6, Landroid/util/jar/StrictJarFile;

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-direct {v6, p2, v7, v8}, Landroid/util/jar/StrictJarFile;-><init>(Ljava/lang/String;ZZ)V

    move-object v5, v6

    .line 1411
    nop

    .line 1413
    invoke-virtual {v5}, Landroid/util/jar/StrictJarFile;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 1414
    .local v6, "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/zip/ZipEntry;>;"
    :goto_17
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_92

    .line 1416
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/zip/ZipEntry;

    .line 1417
    .local v7, "zipEntry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v7}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v8

    .line 1418
    .local v8, "name":Ljava/lang/String;
    invoke-virtual {v8, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_2b} :catch_b0
    .catch Ljava/lang/SecurityException; {:try_start_a .. :try_end_2b} :catch_99
    .catchall {:try_start_a .. :try_end_2b} :catchall_97

    const-string v10, "buildConfirm.crt"

    const-string v11, "buildinfo"

    if-eqz v9, :cond_57

    :try_start_31
    invoke-virtual {v8, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_57

    .line 1420
    invoke-virtual {p1, p2}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->setCodePath(Ljava/lang/String;)V

    .line 1421
    invoke-virtual {p1, v8}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->setTokenName(Ljava/lang/String;)V

    .line 1422
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->setCertName(Ljava/lang/String;)V

    .line 1423
    const/4 v0, 0x1

    .line 1424
    .end local v4    # "ret":Z
    .local v0, "ret":Z
    move v4, v0

    goto :goto_92

    .line 1425
    .end local v0    # "ret":Z
    .restart local v4    # "ret":Z
    :cond_57
    invoke-virtual {v8, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_91

    invoke-virtual {v8, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_91

    invoke-virtual {v8, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_91

    .line 1427
    invoke-virtual {p1, p2}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->setCodePath(Ljava/lang/String;)V

    .line 1428
    invoke-virtual {p1, v8}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->setTokenName(Ljava/lang/String;)V

    .line 1429
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->setCertName(Ljava/lang/String;)V
    :try_end_8e
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_8e} :catch_b0
    .catch Ljava/lang/SecurityException; {:try_start_31 .. :try_end_8e} :catch_99
    .catchall {:try_start_31 .. :try_end_8e} :catchall_97

    .line 1430
    const/4 v0, 0x1

    .line 1431
    .end local v4    # "ret":Z
    .restart local v0    # "ret":Z
    move v4, v0

    goto :goto_92

    .line 1434
    .end local v0    # "ret":Z
    .end local v7    # "zipEntry":Ljava/util/zip/ZipEntry;
    .end local v8    # "name":Ljava/lang/String;
    .restart local v4    # "ret":Z
    :cond_91
    goto :goto_17

    .line 1448
    .end local v6    # "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/zip/ZipEntry;>;"
    :cond_92
    :goto_92
    nop

    .line 1449
    :goto_93
    invoke-virtual {v5}, Landroid/util/jar/StrictJarFile;->close()V

    goto :goto_c7

    .line 1448
    :catchall_97
    move-exception v0

    goto :goto_c8

    .line 1442
    :catch_99
    move-exception v0

    .line 1444
    .local v0, "e":Ljava/lang/SecurityException;
    :try_start_9a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1448
    nop

    .end local v0    # "e":Ljava/lang/SecurityException;
    if-eqz v5, :cond_c7

    .line 1449
    goto :goto_93

    .line 1438
    :catch_b0
    move-exception v0

    .line 1440
    .local v0, "m":Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c3
    .catchall {:try_start_9a .. :try_end_c3} :catchall_97

    .line 1448
    nop

    .end local v0    # "m":Ljava/io/IOException;
    if-eqz v5, :cond_c7

    .line 1449
    goto :goto_93

    .line 1451
    :cond_c7
    :goto_c7
    return v4

    .line 1448
    :goto_c8
    if-eqz v5, :cond_cd

    .line 1449
    invoke-virtual {v5}, Landroid/util/jar/StrictJarFile;->close()V

    .line 1450
    :cond_cd
    throw v0
.end method

.method private isAutoTimeEnabled(Landroid/content/Context;)Z
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .line 3163
    const-string v0, "AASA_ASKSManager_SECURETIME"

    const-string/jumbo v1, "isAutoTimeEnabled : "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3164
    if-nez p1, :cond_11

    .line 3165
    const-string v1, "context is null. "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3166
    const/4 v0, 0x0

    return v0

    .line 3168
    :cond_11
    const/4 v1, 0x0

    .line 3170
    .local v1, "result":Z
    :try_start_12
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "auto_time"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_27

    .line 3171
    const-string/jumbo v2, "isAutoTimeEnabled : ON"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3172
    const/4 v0, 0x1

    .end local v1    # "result":Z
    .local v0, "result":Z
    goto :goto_2e

    .line 3174
    .end local v0    # "result":Z
    .restart local v1    # "result":Z
    :cond_27
    const-string/jumbo v2, "isAutoTimeEnabled : OFF"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2d
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_12 .. :try_end_2d} :catch_2f

    .line 3175
    const/4 v0, 0x0

    .line 3181
    .end local v1    # "result":Z
    .restart local v0    # "result":Z
    :goto_2e
    goto :goto_35

    .line 3177
    .end local v0    # "result":Z
    .restart local v1    # "result":Z
    :catch_2f
    move-exception v0

    .line 3179
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    .line 3180
    const/4 v1, 0x0

    move v0, v1

    .line 3182
    .end local v1    # "result":Z
    .local v0, "result":Z
    :goto_35
    return v0
.end method

.method private isInteger(Ljava/lang/String;)Z
    .registers 4
    .param p1, "s"    # Ljava/lang/String;

    .line 2384
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_3} :catch_6

    .line 2388
    nop

    .line 2390
    const/4 v0, 0x1

    return v0

    .line 2386
    :catch_6
    move-exception v0

    .line 2387
    .local v0, "e":Ljava/lang/NumberFormatException;
    const/4 v1, 0x0

    return v1
.end method

.method private isSignatureMatched(Ljava/lang/String;[Landroid/content/pm/Signature;)I
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "signatures"    # [Landroid/content/pm/Signature;

    .line 978
    const/4 v0, -0x1

    .line 979
    .local v0, "key_index":I
    iget-boolean v1, p0, Lcom/android/server/asks/ASKSManagerService;->DEBUG_MODE_FOR_DEVELOPMENT:Z

    const/16 v2, 0xa

    if-eqz v1, :cond_a

    const/16 v1, 0xb

    goto :goto_b

    :cond_a
    move v1, v2

    :goto_b
    new-array v1, v1, [Ljava/lang/String;

    .line 982
    .local v1, "needToCheckSignature":[Ljava/lang/String;
    const/4 v3, 0x0

    const-string v4, "308204d4308203bca003020102020900d20995a79c0daad6300d06092a864886f70d01010505003081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d301e170d3131303632323132323531325a170d3338313130373132323531325a3081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d30820120300d06092a864886f70d01010105000382010d00308201080282010100c986384a3e1f2fb206670e78ef232215c0d26f45a22728db99a44da11c35ac33a71fe071c4a2d6825a9b4c88b333ed96f3c5e6c666d60f3ee94c490885abcf8dc660f707aabc77ead3e2d0d8aee8108c15cd260f2e85042c28d2f292daa3c6da0c7bf2391db7841aade8fdf0c9d0defcf77124e6d2de0a9e0d2da746c3670e4ffcdc85b701bb4744861b96ff7311da3603c5a10336e55ffa34b4353eedc85f51015e1518c67e309e39f87639ff178107f109cd18411a6077f26964b6e63f8a70b9619db04306a323c1a1d23af867e19f14f570ffe573d0e3a0c2b30632aaec3173380994be1e341e3a90bd2e4b615481f46db39ea83816448ec35feb1735c1f3020103a382010b30820107301d0603551d0e04160414932c3af70b627a0c7610b5a0e7427d6cfaea3f1e3081d70603551d230481cf3081cc8014932c3af70b627a0c7610b5a0e7427d6cfaea3f1ea181a8a481a53081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d820900d20995a79c0daad6300c0603551d13040530030101ff300d06092a864886f70d01010505000382010100329601fe40e036a4a86cc5d49dd8c1b5415998e72637538b0d430369ac51530f63aace8c019a1a66616a2f1bb2c5fabd6f313261f380e3471623f053d9e3c53f5fd6d1965d7b000e4dc244c1b27e2fe9a323ff077f52c4675e86247aa801187137e30c9bbf01c567a4299db4bf0b25b7d7107a7b81ee102f72ff47950164e26752e114c42f8b9d2a42e7308897ec640ea1924ed13abbe9d120912b62f4926493a86db94c0b46f44c6161d58c2f648164890c512dfb28d42c855bf470dbee2dab6960cad04e81f71525ded46cdd0f359f99c460db9f007d96ce83b4b218ac2d82c48f12608d469733f05a3375594669ccbf8a495544d6c5701e9369c08c810158"

    aput-object v4, v1, v3

    .line 983
    const-string v3, "308204d4308203bca003020102020900e5eff0a8f66d92b3300d06092a864886f70d01010505003081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d301e170d3131303632323132323531335a170d3338313130373132323531335a3081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d30820120300d06092a864886f70d01010105000382010d00308201080282010100e9f1edb42423201dce62e68f2159ed8ea766b43a43d348754841b72e9678ce6b03d06d31532d88f2ef2d5ba39a028de0857983cd321f5b7786c2d3699df4c0b40c8d856f147c5dc54b9d1d671d1a51b5c5364da36fc5b0fe825afb513ec7a2db862c48a6046c43c3b71a1e275155f6c30aed2a68326ac327f60160d427cf55b617230907a84edbff21cc256c628a16f15d55d49138cdf2606504e1591196ed0bdc25b7cc4f67b33fb29ec4dbb13dbe6f3467a0871a49e620067755e6f095c3bd84f8b7d1e66a8c6d1e5150f7fa9d95475dc7061a321aaf9c686b09be23ccc59b35011c6823ffd5874d8fa2a1e5d276ee5aa381187e26112c7d5562703b36210b020103a382010b30820107301d0603551d0e041604145b115b23db35655f9f77f78756961006eebe3a9e3081d70603551d230481cf3081cc80145b115b23db35655f9f77f78756961006eebe3a9ea181a8a481a53081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d820900e5eff0a8f66d92b3300c0603551d13040530030101ff300d06092a864886f70d0101050500038201010039c91877eb09c2c84445443673c77a1219c5c02e6552fa2fbad0d736bc5ab6ebaf0375e520fe9799403ecb71659b23afda1475a34ef4b2e1ffcba8d7ff385c21cb6482540bce3837e6234fd4f7dd576d7fcfe9cfa925509f772c494e1569fe44e6fcd4122e483c2caa2c639566dbcfe85ed7818d5431e73154ad453289fb56b607643919cf534fbeefbdc2009c7fcb5f9b1fa97490462363fa4bedc5e0b9d157e448e6d0e7cfa31f1a2faa9378d03c8d1163d3803bc69bf24ec77ce7d559abcaf8d345494abf0e3276f0ebd2aa08e4f4f6f5aaea4bc523d8cc8e2c9200ba551dd3d4e15d5921303ca9333f42f992ddb70c2958e776c12d7e3b7bd74222eb5c7a"

    const/4 v4, 0x1

    aput-object v3, v1, v4

    .line 984
    const/4 v3, 0x2

    const-string v4, "308204d4308203bca003020102020900f3a752a8cbb7ac6a300d06092a864886f70d01010505003081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d301e170d3131303732373132323632335a170d3338313231323132323632335a3081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d30820120300d06092a864886f70d01010105000382010d00308201080282010100bd20d27f5127981cf0855e43e64d8018b92401ff0b4b241eeb54c4fb0e84dcf94cf8da888e34c1c370bc437f77880819f3a9894019f05d5514bc3d20d17e968167d85990fa1a44b9e79aa1da9681dc8d2c39b98b3b257918748c6f5bb9126330d72fdc26065e717f1a5c27c8b075f1a8d7325f7eb2d57ee34d93d76a5c529d2e0789392793c68c8f5090c4d2d093190b3279943550e2f5c864118e84d6c6c6bc67815148db8752e4bf69a9ca729ca4704d966e8dd591506dfc9dd9c8c33bdc7bf58660df6be3b45753983a092c3a4ae899d1f2253017ba606a5b1dda2f5511fcf530ea43c7dc05ff1621d305f12a37148e72078aaf644dadc98f3b6789cb6655020103a382010b30820107301d0603551d0e041604142fa3167aab7de1f13b4edef062fa715c0609f0bf3081d70603551d230481cf3081cc80142fa3167aab7de1f13b4edef062fa715c0609f0bfa181a8a481a53081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d820900f3a752a8cbb7ac6a300c0603551d13040530030101ff300d06092a864886f70d01010505000382010100498ed96cbc503fb1b72402dcb8ba364d8aa11dc5b9a7e191d200af4051272519b3099eba16e538044f086a1e36710abf2980efb437b6a9bebfab93417c068ea18cbfdeb8570fca73951684c674eb33c4240e236928ba1197d6b385c40454c3980f6f764131149dbba80756b7b18c5951a8630a6692fdb30227b431175f793a6e39479e8ad8b4b4beca6faabf9fc243b9be47447229524487f5f04cf6661ec818a3756221360bfeee3ccaec9a6dc67694b791a80957b28f11f15fd81eaeb361e4c9f907d3ceb4176f9947b513f8cd89d77044adae7c7f631f27a2e40a8d655a9c73515c796b17a39d0e9de675d62bf785c1e0d65a937c65aadacf788b2dfc14e2"

    aput-object v4, v1, v3

    .line 985
    const/4 v3, 0x3

    const-string v4, "308204d4308203bca003020102020900b830e7f5ede090a8300d06092a864886f70d01010505003081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d301e170d3131303632323132323531325a170d3338313130373132323531325a3081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d30820120300d06092a864886f70d01010105000382010d003082010802820101009a280ff8cebd5954fbac141d450be91a980a6597b379cb64a19bc4ab39aecb5f06fe2599d3767bb0c27e3e8ac3846cf0b80c09817f8d22be8a55418a068c6983958ffc233a99cd793bc468b0bda139b87ff1550e5ce184647214a1fa4fe2121a0ecdbb1cd33c644c06e7b70455ff097a4f8c51eca2ebefb4602b5d8bb6ed811ec959c1e99e8f353667703563c3c3277bbbd872fe7fa84bd8041efa98d32bb35c44d9c55aa8e766da065176722103fdb63677392c94bd20f5a5ac5c780046bc729a2eec3575a05ddb39836235c8c939f95493aa8f32dd7e7016392716219f0c5fe48874f283af0c217b4c08536b5df7bc302c9e2af08db61ecb49a198c7c4bd2b020103a382010b30820107301d0603551d0e041604144d2270829d5cf4a65bf55a756224bea659c2dfda3081d70603551d230481cf3081cc80144d2270829d5cf4a65bf55a756224bea659c2dfdaa181a8a481a53081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d820900b830e7f5ede090a8300c0603551d13040530030101ff300d06092a864886f70d01010505000382010100751ea54edeb751de01436db8009352bee64209020fe40641ac09d0016c807fd89258aca374299520e30bc79e77a161c98ddb8ccfc9c8184969114e4478d1b1b374a97e52e07e056dd6b6de5b063c12203e55e284d1de58af2fc6e43c198857b87ac9a472633b8a1cd7e6ebc4e2d675b680d1844d86ab7569129d24e2bcf10cddb2e66c85c1335a3d6479749152058a27135440b795bf509d78009fbda18a6c0cb31b741f79a4ac189d44fd04f65887bb9d950cc2b6f43275e71900fba03b06a9ab9ecd58af0f8c2e0b3569197b043da0601563b0af26a0f52c4b7e834c7ccf5dec4d330d8fd0a049360cd3d9ef0bff09b9812c9ba406c8a6650688b0919a040b"

    aput-object v4, v1, v3

    .line 986
    const/4 v3, 0x4

    const-string v4, "30820411308202f9a003020102020900fd222d6fc87acde0300d06092a864886f70d010105050030819e310b3009060355040613024b523113301106035504080c0a536f7574684b6f7265613112301006035504070c095375776f6e43697479311b3019060355040a0c1253616d73756e67436f72706f726174696f6e310c300a060355040b0c03444d433114301206035504030c0b53616d73756e67436572743125302306092a864886f70d01090116166d2e73656375726974794073616d73756e672e636f6d3020170d3133303132343035323231305a180f32313132313233313035323231305a30819e310b3009060355040613024b523113301106035504080c0a536f7574684b6f7265613112301006035504070c095375776f6e43697479311b3019060355040a0c1253616d73756e67436f72706f726174696f6e310c300a060355040b0c03444d433114301206035504030c0b53616d73756e67436572743125302306092a864886f70d01090116166d2e73656375726974794073616d73756e672e636f6d30820120300d06092a864886f70d01010105000382010d00308201080282010100a2c51f56a1c8bf64ada0af152ced2344ac070b447efc85f1b69ce90fbc2b7a71257240c215eedbf7445c474fe34d62bc3035d79ba110859118f1200ecc9ae48b56400e187591272d59734e456d9dfd5a1f3227a30b9448bda84c2901b501295445e204ddb6f9f9e36b2560998f1764e446176fe5d83987220f8ed15106dc7c8ecb6798de45f5fbae54efe2b35a379631f545f84c98243aa4d92ef339330f954ad32e4e97aff69cbf68928484b03a8fa8eafdc8ff2a9801f249302d467b05f99a1680e4fb5b11624d5e53d67f09e86b82dd7305e3e483b12e3720fcccc2bc8857f13b6e1d60512074004f67d86241940eaba34afda2af3904b04913fa50f499f7020103a350304e301d0603551d0e04160414eef0f8211dccf6e442f3388889c9a3ea3ce0236c301f0603551d23041830168014eef0f8211dccf6e442f3388889c9a3ea3ce0236c300c0603551d13040530030101ff300d06092a864886f70d01010505000382010100395c7e7900c471e03fa9850905c6ab1edc5a8b7d43a16689d9bb1ec1a06513c4ea8f7471c6e474244174261cc151ae8d1a61019e0ed81fffee8afa1d01d85a32de796f4b46d0d5ddfcca7d1f90d523b54751f505a4e3b059569f24ba2564d72fbc4081533840f618c2993d935134d3c987605e032f6a12889af3190af1714a90f2a3476b8e0016ab45564bf10e611899babd86af33149ca6838b0a885c752ffe879f37997f262e819c62cf59caa794cfaaf8e3c462f5092a34264f0634316b13a67a644e104dc4070e8b6628a46f41da7e3c741f6edc21152f9f947dde6fe14b58f34e4d9e7abd103cb1ca9e09eb4fa5b553baa413329bd3919caca2d52e6d4b"

    aput-object v4, v1, v3

    .line 987
    const/4 v3, 0x5

    const-string v4, "308204d4308203bca003020102020900b161f3869153be27300d06092a864886f70d01010505003081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d301e170d3131303632323132323531325a170d3338313130373132323531325a3081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d30820120300d06092a864886f70d01010105000382010d00308201080282010100e93d8694c493d50a6224a473d70ddcecd84a2f40ac48bb8206c83a09a94f2db98aaa34f9fcc343b91a87c61254c3a43b0caed03cd839a63037253ea77d949a284dd0b44ebfbabbc2cea838213609d9a5813e88863210ee62c0c0e415611aa7f938ad2bc627c147ac6cf558002028d2e38b1d31aba794867717ddcfcadbeeac6bd345a7bf6433e52cfc93a2157cb048298bd33bf30c143b777e3f074897bcf3b5b181316b678256fd3accf64e88160b0781efd90711ef4acae86848d87e1c10a1747e780c48bcb378a7b437e0405ec54ed7e22c4dbc39f8b03ab1d5eeb7cf4804455fbcab35afb775d79e8f4c4fa4da00b2ce48c991fd94020f7ad089fba13003020103a382010b30820107301d0603551d0e04160414b58d96dcf0127466098625e3ffb03a4f8d0654743081d70603551d230481cf3081cc8014b58d96dcf0127466098625e3ffb03a4f8d065474a181a8a481a53081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d820900b161f3869153be27300c0603551d13040530030101ff300d06092a864886f70d0101050500038201010091327721aa614451a785e200349ce2f402049371943001266827c29abdf975dc7b3e6eaa02c41a07b445bb9de0bc43ce25c3c98928a94ff67ad81eec822cbd083ae686cd7126860655adb8d6a6228cf1f7a4a196699669c05b506efa1fca2cad1a150cabd01380e56bb1842651b4ff33bcb619b3c6e65a10cfd99350ea777c3866135523c1bece17f59fba76a2eb429453f7a2a9e6a6cc9e62e5f4b56706ba4c74cb86975aa865bead2209787b33261b9fa222a7117b1724ea3217ad680fd0408c5634278fbdfca0e32b16dc1a6cc245e931cbe84fc7cccdaa7778459e3003a082662ac6d84d485dd368e0eb4c2c9019420c82d1cd0fbd6fcc097353b059baea"

    aput-object v4, v1, v3

    .line 988
    const/4 v3, 0x6

    const-string v4, "308204d4308203bca003020102020900e49d6da353f759af300d06092a864886f70d01010505003081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d301e170d3039303630393135353934365a170d3336313032353135353934365a3081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d30820120300d06092a864886f70d01010105000382010d003082010802820101009ba004179d8018ab0fa3ab3c804899c2ecb6d66784225ae99936b71fd7f059969bb2076b8f2b9d7a5c20d0622e0a766de9602e3e8d60d9d335bdeab78100188f734b4678c7369c2e764913c8f43eede582827b8d1dc679c8fd0f0d0605fc6b87d331e2544bf11790b2a55c3a13463ec4cd35a931ad40dc687f116f1d6ba79eb63a01f96d107b1b166ddacb6d2fe8ac618217dabe6b69d4d9e692ab1970bb4346fd4860586e8387ef7682b07a428bc8036db143079bc37c8830e5a8c3d690f6b0cef5596ed80a9830f2e61c055894be1c2a7b3048602ef6df0e51073e06f0d55177f6aeb96b91b3b4c66b8b6e5b32bbe2afe46f45b0f48300a6ac9f9de1c500b7020103a382010b30820107301d0603551d0e041604149b6890fb4274c2e32d6c5daea2fac4dd0756529a3081d70603551d230481cf3081cc80149b6890fb4274c2e32d6c5daea2fac4dd0756529aa181a8a481a53081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d820900e49d6da353f759af300c0603551d13040530030101ff300d06092a864886f70d010105050003820101001a76d67e729785f9f22015d9eb9d1998f2d8ce5bc147f65060d58f2f29004a592dd065b651e8d746cf050f3389b1632970d1334e9bce20b43a77a18b6226be0da0a4ab4420dd734dcdd0e049c4f07cf45f3faee8ac90332c14b1f7c4e4f55866a8e3aa71ad1814b5c591e07085dadbe15544ef9bc9591b2c75b373ca9214f8a49acd18ccf061b484c3cd1448bb2af149694d58a53d4c6878b8e06c12e214e2847117ef95348eca3acaa3fffecd7924cb1dd67251eaee14b01870cae92a4238cecac4cda5ba2a2640055303e98e62121a9e49ac0dfcde32b28606f3fc613709fe5ab8aefea4ed53a310c4c9dac7f90242d55697b5690ade195f5253da947f2eaa"

    aput-object v4, v1, v3

    .line 989
    const/4 v3, 0x7

    const-string v4, "3082041e30820306a003020102020601670c2687f3300d06092a864886f70d01010505003081c4310b3009060355040613024b52311a30180603550408131152657075626c6963206f66204b6f726561311330110603550407130a5375776f6e204369747931253023060355040a131c53616d73756e6720456c656374726f6e69637320436f2e204c74642e31273025060355040b131e4d6f62696c6520436f6d6d756e69636174696f6e7320427573696e657373313430320603550403132b53616d73756e6720506c6174666f726d204b657920666f72206e6f6e2d47616c61787920646576696365733020170d3138313131333038313833315a180f32313138313131323135303030305a3081c4310b3009060355040613024b52311a30180603550408131152657075626c6963206f66204b6f726561311330110603550407130a5375776f6e204369747931253023060355040a131c53616d73756e6720456c656374726f6e69637320436f2e204c74642e31273025060355040b131e4d6f62696c6520436f6d6d756e69636174696f6e7320427573696e657373313430320603550403132b53616d73756e6720506c6174666f726d204b657920666f72206e6f6e2d47616c617879206465766963657330820122300d06092a864886f70d01010105000382010f003082010a0282010100f7049ae9aa6c64c27ebcf799f32bd9118c2870a54b4c9cd200aa33d2f332903b2a6430c608aac3038b65f644d7a82127ec187099beb680c71d3593d2522f94c894c018fb8fb08d3282bea8feafe902ce1a11da806d63366f514b97c6e286221537f758ece2bcb0b2278c4ae9217ff1c078ddb9401ce490f07557b50f6ddbbe43aacae52849a5e465010af4bdf13eae532771f6c8dc370fe715988d615e67dff7870bd4393490d17ab71584dbe7eb549df5b402fb7f0b4db5cc86e4a818601a183fe94a4a2bafd29367507f131490ac3e4e38c61f9f86c82cf2b583656b95139ce4e46c3ce04d9a9587316a47062ced72e186d546bcc39896491ad3242bb658b70203010001a3123010300e0603551d0f0101ff0404030205a0300d06092a864886f70d010105050003820101003347014ea4d8c43a387b28331fd3ba02a4aee7b9ecd340bce8e517c21ee6cc0e295d999ac5e68352ca59f30b82aa2c0736715cc20710338c34beacec99ba7a153cead3ec03640f6b764dcfa0fabfa4df5972b7abbecf532238ae1a1e2b404379f065c4ea8d148f60eb6f51c783b82b28bc97cc4486bfb08f9bba956323044b67d4fefb560c44fa18aeb397c0d87841295de021be9599396a0e734d2ec69dde9b70545db7aa106901437f07dc6d26f99d97b83380bad7b42536a47742935fe143684d8f31f07df44a7c274eaa33ba51863dbe57a1bc66cb988a97ed17f0f86e596c03a511391ec72dc4c79c039657d8b4b4ddd8a2910fa4872a3935d93a6947ad"

    aput-object v4, v1, v3

    .line 990
    const/16 v3, 0x8

    const-string v4, "3082041830820300a003020102020601670c27ef2d300d06092a864886f70d01010505003081c1310b3009060355040613024b52311a30180603550408131152657075626c6963206f66204b6f726561311330110603550407130a5375776f6e204369747931253023060355040a131c53616d73756e6720456c656374726f6e69637320436f2e204c74642e31273025060355040b131e4d6f62696c6520436f6d6d756e69636174696f6e7320427573696e6573733131302f0603550403132853616d73756e67204d65646961204b657920666f72206e6f6e2d47616c61787920646576696365733020170d3138313131333038323030325a180f32313138313131323135303030305a3081c1310b3009060355040613024b52311a30180603550408131152657075626c6963206f66204b6f726561311330110603550407130a5375776f6e204369747931253023060355040a131c53616d73756e6720456c656374726f6e69637320436f2e204c74642e31273025060355040b131e4d6f62696c6520436f6d6d756e69636174696f6e7320427573696e6573733131302f0603550403132853616d73756e67204d65646961204b657920666f72206e6f6e2d47616c617879206465766963657330820122300d06092a864886f70d01010105000382010f003082010a0282010100bb60b4487c7c006073d54adf1e85ee3352f323e7ed751880b7ff99313fa6e4d94236cbc474aad528bfdc5a1a2ba33bdbd17996439ab3746b8bfd243852429c2c036a0d634e2ee2774ae92dede65430698e77368be3fbe640d842a445fe57118111e479ed018142157095b17dd146e689e049e5182931347113c38391c3cec258ca6b675f5bdb4158de58a64c0f37fb86e0f4517d879eb265fc44ee33aca2f1185b74f23e4a48c8a7eb8941055d374c485ca0ae5adb04607e9aedf43d3ae7e15f3e0ef6f05a922c3925fa11488371f94a3847f7cefbbf5fbcf18416f21171b946c6be5acbbe9e55bf610fa333b4d1e6d0c0278bba1817cd70aa1beefb73756fb90203010001a3123010300e0603551d0f0101ff0404030205a0300d06092a864886f70d0101050500038201010057f1b2b239f9551f4de9fb5afd88b0b7bc67d37bf9bfe8748583d35d14c9291355322e896bbb66d0d56c9708215fad9c40e9398620ea3b1e4641a5883a88472f852cc36afa88b695d5a7af408d5eb583bd4cec9452d0f901b6c38e1f97b55325b596e742fade940391b44d8f19352e8a543fe1c89ad600a8ba32373b1d84fb1b8d34e7541337254fdc9716b2adcfed7105f713ec4fc98c4eee56f7ffa2d2355e16161e2f276a075eda15cc2cdba93c6a49907ad01463cc752708051b8d87001028a6869187589425d3a8992cb9044a7c4d5e3e74a270f6bd1ebf57fd3afb82ab74399a40db820103ea361f7e87b172302ce14b29527bde67c01f4b71832c8665"

    aput-object v4, v1, v3

    .line 991
    const/16 v3, 0x9

    const-string v4, "3082041a30820302a003020102020601670c278709300d06092a864886f70d01010505003081c2310b3009060355040613024b52311a30180603550408131152657075626c6963206f66204b6f726561311330110603550407130a5375776f6e204369747931253023060355040a131c53616d73756e6720456c656374726f6e69637320436f2e204c74642e31273025060355040b131e4d6f62696c6520436f6d6d756e69636174696f6e7320427573696e657373313230300603550403132953616d73756e6720536861726564204b657920666f72206e6f6e2d47616c61787920646576696365733020170d3138313131333038313933365a180f32313138313131323135303030305a3081c2310b3009060355040613024b52311a30180603550408131152657075626c6963206f66204b6f726561311330110603550407130a5375776f6e204369747931253023060355040a131c53616d73756e6720456c656374726f6e69637320436f2e204c74642e31273025060355040b131e4d6f62696c6520436f6d6d756e69636174696f6e7320427573696e657373313230300603550403132953616d73756e6720536861726564204b657920666f72206e6f6e2d47616c617879206465766963657330820122300d06092a864886f70d01010105000382010f003082010a02820101009fce256105db13cb1ec14f133d799cf889bf7c29cb8a1a8e8ba1d618a03e01b6705901e7fe2d012b3ad2cfdcad80a2718b4fb09f2d0ef0142cea5fd17afbddb4a1e7d2c99f2a1650ca17faedae9cbc5c13561e723b9ae120f55109aa992d57d2ba7e3c495620e5957c7c75c2ade6d03c5b204ceb460754ccdcd5791267f46283f37923ce3d828ee78a8702770a6356824086c956e403048059d8d07797b1b3d2671f8134b97bcdc009ce0fde7f9fda53d9175440309920838bb7dd129189322cd47851f2be587d288a38af2c32bf1024d9b7e265009db694d6d24d40576eb777b0b3713ac24cbbf1cf0534e565ce5030503c842e43438ca27557b209f475337d0203010001a3123010300e0603551d0f0101ff0404030205a0300d06092a864886f70d010105050003820101009bddfa8de87f1d9e7467e0251ca54441f6a68f4f3fc84b0fe273ffd7f01598df91b61b5bd61b14d1ecaa633d20c96b950797432e85f144d2cc04b59770e7ec912ffd59573dcc79d438ef04ed81ea98f09c8b4a2f1e7701dcac789ab33c2a2b39d026b72f3bcff9c29bdfbe34edd6be30ac6b050c10e259d4ed99b6efb4c9d0c32020f842e74984fd00bc59bb32e28ca5f32e052e19fa30859da473a402539bf58d87140edc935792f5e2da4a017e71304fbc3a20f25129a19f7f3ff3e6e1c75a6c1cf489d13e80d8a86fc8b6dd879088c4272d4bbd069b4a43bb61210b066c5280293aa580751337b24fda13553d7294b5916433e730a021520330236639e89c"

    aput-object v4, v1, v3

    .line 993
    iget-boolean v3, p0, Lcom/android/server/asks/ASKSManagerService;->DEBUG_MODE_FOR_DEVELOPMENT:Z

    if-eqz v3, :cond_49

    .line 995
    const-string v3, "308204a830820390a003020102020900b3998086d056cffa300d06092a864886f70d0101040500308194310b3009060355040613025553311330110603550408130a43616c69666f726e6961311630140603550407130d4d6f756e7461696e20566965773110300e060355040a1307416e64726f69643110300e060355040b1307416e64726f69643110300e06035504031307416e64726f69643122302006092a864886f70d0109011613616e64726f696440616e64726f69642e636f6d301e170d3038303431353232343035305a170d3335303930313232343035305a308194310b3009060355040613025553311330110603550408130a43616c69666f726e6961311630140603550407130d4d6f756e7461696e20566965773110300e060355040a1307416e64726f69643110300e060355040b1307416e64726f69643110300e06035504031307416e64726f69643122302006092a864886f70d0109011613616e64726f696440616e64726f69642e636f6d30820120300d06092a864886f70d01010105000382010d003082010802820101009c780592ac0d5d381cdeaa65ecc8a6006e36480c6d7207b12011be50863aabe2b55d009adf7146d6f2202280c7cd4d7bdb26243b8a806c26b34b137523a49268224904dc01493e7c0acf1a05c874f69b037b60309d9074d24280e16bad2a8734361951eaf72a482d09b204b1875e12ac98c1aa773d6800b9eafde56d58bed8e8da16f9a360099c37a834a6dfedb7b6b44a049e07a269fccf2c5496f2cf36d64df90a3b8d8f34a3baab4cf53371ab27719b3ba58754ad0c53fc14e1db45d51e234fbbe93c9ba4edf9ce54261350ec535607bf69a2ff4aa07db5f7ea200d09a6c1b49e21402f89ed1190893aab5a9180f152e82f85a45753cf5fc19071c5eec827020103a381fc3081f9301d0603551d0e041604144fe4a0b3dd9cba29f71d7287c4e7c38f2086c2993081c90603551d230481c13081be80144fe4a0b3dd9cba29f71d7287c4e7c38f2086c299a1819aa48197308194310b3009060355040613025553311330110603550408130a43616c69666f726e6961311630140603550407130d4d6f756e7461696e20566965773110300e060355040a1307416e64726f69643110300e060355040b1307416e64726f69643110300e06035504031307416e64726f69643122302006092a864886f70d0109011613616e64726f696440616e64726f69642e636f6d820900b3998086d056cffa300c0603551d13040530030101ff300d06092a864886f70d01010405000382010100572551b8d93a1f73de0f6d469f86dad6701400293c88a0cd7cd778b73dafcc197fab76e6212e56c1c761cfc42fd733de52c50ae08814cefc0a3b5a1a4346054d829f1d82b42b2048bf88b5d14929ef85f60edd12d72d55657e22e3e85d04c831d613d19938bb8982247fa321256ba12d1d6a8f92ea1db1c373317ba0c037f0d1aff645aef224979fba6e7a14bc025c71b98138cef3ddfc059617cf24845cf7b40d6382f7275ed738495ab6e5931b9421765c491b72fb68e080dbdb58c2029d347c8b328ce43ef6a8b15533edfbe989bd6a48dd4b202eda94c6ab8dd5b8399203daae2ed446232e4fe9bd961394c6300e5138e3cfd285e6e4e483538cb8b1b357"

    aput-object v3, v1, v2

    .line 998
    :cond_49
    if-eqz p2, :cond_71

    .line 1000
    const/4 v2, 0x0

    .local v2, "iiii":I
    :goto_4c
    array-length v3, p2

    if-ge v2, v3, :cond_71

    .line 1002
    aget-object v3, p2, v2

    if-eqz v3, :cond_6e

    .line 1004
    const/4 v3, 0x0

    .local v3, "jjjj":I
    :goto_54
    array-length v4, v1

    if-ge v3, v4, :cond_6e

    .line 1006
    aget-object v4, v1, v3

    aget-object v5, p2, v2

    invoke-virtual {v5}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_6b

    .line 1008
    move v0, v3

    .line 1009
    goto :goto_6e

    .line 1004
    :cond_6b
    add-int/lit8 v3, v3, 0x1

    goto :goto_54

    .line 1000
    .end local v3    # "jjjj":I
    :cond_6e
    :goto_6e
    add-int/lit8 v2, v2, 0x1

    goto :goto_4c

    .line 1016
    .end local v2    # "iiii":I
    :cond_71
    const/4 v2, -0x1

    if-ne v0, v2, :cond_c2

    .line 1017
    new-instance v3, Ljava/io/File;

    const-string v4, "/data/system/.aasa/AASApolicy/ASKSK.xml"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1018
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_c2

    if-eqz p2, :cond_c2

    .line 1020
    const/4 v4, 0x0

    .local v4, "iiii":I
    :goto_84
    array-length v5, p2

    if-ge v4, v5, :cond_c2

    .line 1022
    aget-object v5, p2, v4

    if-eqz v5, :cond_bf

    .line 1023
    aget-object v5, p2, v4

    invoke-virtual {v5}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1024
    .local v5, "signValue":Ljava/lang/String;
    const/16 v6, 0xf

    const/4 v7, 0x0

    invoke-direct {p0, v6, v5, v7}, Lcom/android/server/asks/ASKSManagerService;->checkListForASKS(ILjava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-eq v6, v2, :cond_bf

    .line 1025
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " pkg:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " signValue is same with "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v6, "AASA_ASKSManager"

    invoke-static {v6, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
    const/16 v0, 0xa

    .line 1027
    goto :goto_c2

    .line 1020
    .end local v5    # "signValue":Ljava/lang/String;
    :cond_bf
    add-int/lit8 v4, v4, 0x1

    goto :goto_84

    .line 1034
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "iiii":I
    :cond_c2
    :goto_c2
    return v0
.end method

.method private isTargetPackage(Ljava/lang/String;Ljava/util/ArrayList;Lcom/android/server/asks/ASKSManagerService$ASKSSession;)Z
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p3, "session"    # Lcom/android/server/asks/ASKSManagerService$ASKSSession;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/server/asks/ASKSManagerService$ASKSSession;",
            ")Z"
        }
    .end annotation

    .line 945
    .local p2, "certList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 947
    .local v0, "signatureList":[Landroid/content/pm/Signature;
    invoke-direct {p0}, Lcom/android/server/asks/ASKSManagerService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v1

    .line 949
    .local v1, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    const/4 v2, 0x0

    if-nez v1, :cond_3c

    .line 951
    if-eqz p3, :cond_3b

    if-eqz p1, :cond_3b

    invoke-virtual {p3}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 952
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isTargetPackage() : There is no information of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", check current session."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AASA_ASKSManager_RESTRICTED"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    invoke-virtual {p3}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->getSignature()[Landroid/content/pm/Signature;

    move-result-object v0

    goto :goto_42

    .line 955
    :cond_3b
    return v2

    .line 958
    :cond_3c
    invoke-interface {v1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/PackageParser$SigningDetails;

    move-result-object v3

    iget-object v0, v3, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    .line 961
    :goto_42
    if-eqz v0, :cond_6e

    array-length v3, v0

    if-lez v3, :cond_6e

    .line 963
    const-string v3, ""

    .line 965
    .local v3, "signatureStr":Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_4a
    array-length v5, v0

    if-ge v4, v5, :cond_6e

    .line 966
    aget-object v5, v0, v4

    invoke-virtual {v5}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v3

    .line 967
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_54
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_6b

    .line 968
    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_68

    .line 969
    const/4 v2, 0x1

    return v2

    .line 967
    :cond_68
    add-int/lit8 v5, v5, 0x1

    goto :goto_54

    .line 965
    .end local v5    # "j":I
    :cond_6b
    add-int/lit8 v4, v4, 0x1

    goto :goto_4a

    .line 974
    .end local v3    # "signatureStr":Ljava/lang/String;
    .end local v4    # "i":I
    :cond_6e
    return v2
.end method

.method private loadCertificates(Landroid/util/jar/StrictJarFile;Ljava/util/zip/ZipEntry;Ljava/security/MessageDigest;)[Ljava/security/cert/Certificate;
    .registers 13
    .param p1, "jarFile"    # Landroid/util/jar/StrictJarFile;
    .param p2, "ze"    # Ljava/util/zip/ZipEntry;
    .param p3, "md"    # Ljava/security/MessageDigest;

    .line 2618
    const-string v0, "AASA_ASKSManager"

    const/4 v1, 0x0

    .line 2620
    .local v1, "is":Ljava/io/InputStream;
    const/4 v2, 0x0

    if-nez p2, :cond_7

    return-object v2

    .line 2622
    :cond_7
    :try_start_7
    invoke-virtual {p1, p2}, Landroid/util/jar/StrictJarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v3

    move-object v1, v3

    .line 2623
    const/4 v3, 0x0

    .line 2624
    .local v3, "size":I
    const/16 v4, 0x1000

    new-array v5, v4, [B

    .line 2625
    .local v5, "localBuf":[B
    if-eqz v1, :cond_23

    .line 2626
    :goto_13
    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v7

    move v3, v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_20

    .line 2627
    invoke-virtual {p3, v5, v6, v3}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_13

    .line 2629
    :cond_20
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 2632
    :cond_23
    if-eqz p2, :cond_29

    invoke-virtual {p1, p2}, Landroid/util/jar/StrictJarFile;->getCertificates(Ljava/util/zip/ZipEntry;)[Ljava/security/cert/Certificate;

    move-result-object v2
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_29} :catch_4c
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_29} :catch_2a

    :cond_29
    return-object v2

    .line 2643
    .end local v3    # "size":I
    .end local v5    # "localBuf":[B
    :catch_2a
    move-exception v3

    .line 2644
    .local v3, "e":Ljava/lang/RuntimeException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "loadCert(md) : TinyAASA + No RUN "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2645
    if-eqz v1, :cond_6e

    .line 2647
    :try_start_46
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_49} :catch_4a

    .line 2649
    goto :goto_6e

    .line 2648
    :catch_4a
    move-exception v0

    goto :goto_6e

    .line 2634
    .end local v3    # "e":Ljava/lang/RuntimeException;
    :catch_4c
    move-exception v3

    .line 2635
    .local v3, "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "loadCert(md) : TinyAASA + No IO "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2636
    if-eqz v1, :cond_6d

    .line 2638
    :try_start_68
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6b
    .catch Ljava/io/IOException; {:try_start_68 .. :try_end_6b} :catch_6c

    .line 2640
    goto :goto_6d

    .line 2639
    :catch_6c
    move-exception v0

    .line 2651
    .end local v3    # "e":Ljava/io/IOException;
    :cond_6d
    :goto_6d
    nop

    .line 2652
    :cond_6e
    :goto_6e
    return-object v2
.end method

.method private loadCertificates(Landroid/util/jar/StrictJarFile;Ljava/util/zip/ZipEntry;[B)[Ljava/security/cert/Certificate;
    .registers 9
    .param p1, "jarFile"    # Landroid/util/jar/StrictJarFile;
    .param p2, "ze"    # Ljava/util/zip/ZipEntry;
    .param p3, "readBuffer"    # [B

    .line 2656
    const-string v0, "AASA_ASKSManager"

    const/4 v1, 0x0

    .line 2658
    .local v1, "is":Ljava/io/InputStream;
    if-eqz p2, :cond_61

    .line 2659
    :try_start_5
    invoke-virtual {p1, p2}, Landroid/util/jar/StrictJarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v2

    move-object v1, v2

    .line 2660
    if-eqz v1, :cond_19

    .line 2661
    :goto_c
    const/4 v2, 0x0

    array-length v3, p3

    invoke-virtual {v1, p3, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_16

    goto :goto_c

    .line 2663
    :cond_16
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 2665
    :cond_19
    invoke-virtual {p1, p2}, Landroid/util/jar/StrictJarFile;->getCertificates(Ljava/util/zip/ZipEntry;)[Ljava/security/cert/Certificate;

    move-result-object v0
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_1d} :catch_40
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_1d} :catch_1e

    return-object v0

    .line 2677
    :catch_1e
    move-exception v2

    .line 2678
    .local v2, "e":Ljava/lang/RuntimeException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "loadCert(B) : No RUN "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2679
    if-eqz v1, :cond_62

    .line 2681
    :try_start_3a
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_3d} :catch_3e

    .line 2683
    goto :goto_62

    .line 2682
    :catch_3e
    move-exception v0

    goto :goto_62

    .line 2668
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :catch_40
    move-exception v2

    .line 2669
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "loadCert(B) : No IO "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2670
    if-eqz v1, :cond_61

    .line 2672
    :try_start_5c
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_5f} :catch_60

    .line 2674
    goto :goto_61

    .line 2673
    :catch_60
    move-exception v0

    .line 2685
    .end local v2    # "e":Ljava/io/IOException;
    :cond_61
    :goto_61
    nop

    .line 2686
    :cond_62
    :goto_62
    const/4 v0, 0x0

    return-object v0
.end method

.method public static main(Landroid/content/Context;)Lcom/android/server/asks/ASKSManagerService;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 190
    const-string v0, "ASKSManager"

    const-string/jumbo v1, "main starts"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    new-instance v1, Lcom/android/server/asks/ASKSManagerService;

    invoke-direct {v1, p0}, Lcom/android/server/asks/ASKSManagerService;-><init>(Landroid/content/Context;)V

    .line 193
    .local v1, "m":Lcom/android/server/asks/ASKSManagerService;
    const-string v2, "asks"

    invoke-static {v2, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 195
    const-string/jumbo v2, "main ends"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    return-object v1
.end method

.method private openSession(Ljava/lang/String;)Lcom/android/server/asks/ASKSManagerService$ASKSSession;
    .registers 4
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 3667
    const/4 v0, 0x0

    .line 3669
    .local v0, "asksSession":Lcom/android/server/asks/ASKSManagerService$ASKSSession;
    iget-object v1, p0, Lcom/android/server/asks/ASKSManagerService;->mSessions:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 3670
    iget-object v1, p0, Lcom/android/server/asks/ASKSManagerService;->mSessions:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;

    .line 3671
    invoke-virtual {v0}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->clear()V

    .line 3672
    invoke-virtual {v0, p1}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->setPackageName(Ljava/lang/String;)V

    .line 3673
    return-object v0

    .line 3676
    :cond_19
    new-instance v1, Lcom/android/server/asks/ASKSManagerService$ASKSSession;

    invoke-direct {v1}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;-><init>()V

    move-object v0, v1

    .line 3677
    invoke-virtual {v0, p1}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->setPackageName(Ljava/lang/String;)V

    .line 3678
    iget-object v1, p0, Lcom/android/server/asks/ASKSManagerService;->mSessions:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3679
    return-object v0
.end method

.method private parsePackageForASKS(Lcom/android/server/asks/ASKSManagerService$ASKSSession;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IZ)I
    .registers 31
    .param p1, "session"    # Lcom/android/server/asks/ASKSManagerService$ASKSSession;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "baseCodePath"    # Ljava/lang/String;
    .param p4, "versionCode"    # I
    .param p5, "installerPackageName"    # Ljava/lang/String;
    .param p6, "keyIndex"    # I
    .param p7, "isSystemApp"    # Z

    .line 1039
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p5

    const-string v13, " "

    const-string v14, "AASA_ASKSManager"

    const/4 v0, 0x1

    .line 1040
    .local v0, "isDevDevice":Z
    const/4 v1, 0x0

    .line 1041
    .local v1, "isOfficial":Z
    const/4 v2, 0x1

    .line 1042
    .local v2, "allowInstall":Z
    const/4 v15, -0x1

    .line 1044
    .local v15, "returnValue":I
    const-string/jumbo v3, "ro.boot.em.status"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "0x1"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1045
    const-string/jumbo v3, "ro.build.official.release"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "true"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1047
    iget-boolean v3, v8, Lcom/android/server/asks/ASKSManagerService;->DEBUG_MODE_FOR_DEVELOPMENT:Z

    if-eqz v3, :cond_38

    .line 1048
    const/4 v0, 0x0

    .line 1049
    const/4 v1, 0x1

    move/from16 v16, v0

    move/from16 v17, v1

    goto :goto_3c

    .line 1047
    :cond_38
    move/from16 v16, v0

    move/from16 v17, v1

    .line 1052
    .end local v0    # "isDevDevice":Z
    .end local v1    # "isOfficial":Z
    .local v16, "isDevDevice":Z
    .local v17, "isOfficial":Z
    :goto_3c
    const-string v1, ""

    .line 1053
    .local v1, "pkgNameHash":Ljava/lang/String;
    const-string v3, ""

    .line 1056
    .local v3, "pkgDigest":Ljava/lang/String;
    :try_start_40
    invoke-direct {v8, v10}, Lcom/android/server/asks/ASKSManagerService;->getSHA256ForPkgName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 1057
    invoke-virtual {v9, v1}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->setPkgNameHash(Ljava/lang/String;)V

    .line 1059
    const-string v0, ""

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->getPkgDigest()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 1061
    invoke-direct {v8, v11}, Lcom/android/server/asks/ASKSManagerService;->getAdvancedHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    .line 1062
    invoke-virtual {v9, v3}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->setPkgDigest(Ljava/lang/String;)V
    :try_end_5c
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_5c} :catch_61

    .line 1066
    :cond_5c
    move-object/from16 v18, v1

    move-object/from16 v19, v3

    goto :goto_66

    .line 1065
    :catch_61
    move-exception v0

    move-object/from16 v18, v1

    move-object/from16 v19, v3

    .line 1070
    .end local v1    # "pkgNameHash":Ljava/lang/String;
    .end local v3    # "pkgDigest":Ljava/lang/String;
    .local v18, "pkgNameHash":Ljava/lang/String;
    .local v19, "pkgDigest":Ljava/lang/String;
    :goto_66
    const/16 v0, 0x9

    :try_start_68
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->getPkgNameHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->getPkgDigest()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v8, v0, v1, v3}, Lcom/android/server/asks/ASKSManagerService;->checkListForASKS(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_74
    .catch Ljava/io/IOException; {:try_start_68 .. :try_end_74} :catch_189

    const-string v7, "anyway continue to install since this binary is not official"

    const/4 v1, -0x1

    if-eq v0, v1, :cond_94

    .line 1072
    if-eqz v17, :cond_7d

    .line 1073
    const/4 v0, -0x7

    .line 1074
    .end local v15    # "returnValue":I
    .local v0, "returnValue":I
    return v0

    .line 1077
    .end local v0    # "returnValue":I
    .restart local v15    # "returnValue":I
    :cond_7d
    :try_start_7d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is in BlackList, so fail to install"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1078
    invoke-static {v14, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1083
    :cond_94
    invoke-direct {v8, v9, v11}, Lcom/android/server/asks/ASKSManagerService;->isASKSToken(Lcom/android/server/asks/ASKSManagerService$ASKSSession;Ljava/lang/String;)Z

    move-result v0
    :try_end_98
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_98} :catch_189

    const-string v6, "_"

    if-eqz v0, :cond_165

    .line 1085
    const/4 v2, 0x0

    .line 1087
    const/16 v0, 0xc

    const/4 v3, 0x0

    :try_start_a0
    invoke-direct {v8, v0, v12, v3}, Lcom/android/server/asks/ASKSManagerService;->checkListForASKS(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_aa

    .line 1088
    const/4 v0, 0x1

    move/from16 v20, v0

    .end local v2    # "allowInstall":Z
    .local v0, "allowInstall":Z
    goto :goto_b8

    .line 1090
    .end local v0    # "allowInstall":Z
    .restart local v2    # "allowInstall":Z
    :cond_aa
    const/16 v0, 0xa

    invoke-direct {v8, v0, v10, v3}, Lcom/android/server/asks/ASKSManagerService;->checkListForASKS(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_b0
    .catch Ljava/io/IOException; {:try_start_a0 .. :try_end_b0} :catch_189

    if-eq v0, v1, :cond_b6

    .line 1091
    const/4 v0, 0x1

    move/from16 v20, v0

    .end local v2    # "allowInstall":Z
    .restart local v0    # "allowInstall":Z
    goto :goto_b8

    .line 1090
    .end local v0    # "allowInstall":Z
    .restart local v2    # "allowInstall":Z
    :cond_b6
    move/from16 v20, v2

    .line 1101
    .end local v2    # "allowInstall":Z
    .local v20, "allowInstall":Z
    :goto_b8
    const/4 v0, -0x1

    .line 1102
    .local v0, "verifyRet":I
    const/16 v21, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p5

    move/from16 v5, v20

    move/from16 v22, v0

    move-object v0, v6

    .end local v0    # "verifyRet":I
    .local v22, "verifyRet":I
    move/from16 v6, v21

    move-object v9, v7

    move/from16 v7, p6

    :try_start_cd
    invoke-direct/range {v1 .. v7}, Lcom/android/server/asks/ASKSManagerService;->verifyToken(Lcom/android/server/asks/ASKSManagerService$ASKSSession;Ljava/lang/String;Ljava/lang/String;ZII)I

    move-result v1

    move v2, v1

    .end local v22    # "verifyRet":I
    .local v2, "verifyRet":I
    if-nez v1, :cond_db

    .line 1103
    const-string v0, "AASA OK"

    invoke-static {v14, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_15e

    .line 1107
    :cond_db
    if-eqz v17, :cond_144

    .line 1109
    rem-int/lit8 v1, v2, 0xa

    const/4 v3, 0x3

    if-lt v1, v3, :cond_e4

    if-nez v16, :cond_fd

    .line 1111
    :cond_e4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->getPkgDigest()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v2, v0, v12}, Lcom/android/server/asks/ASKSManagerService;->setSamsungAnalyticsLog(ILjava/lang/String;Ljava/lang/String;)V

    .line 1114
    :cond_fd
    rem-int/lit8 v0, v2, 0xa
    :try_end_ff
    .catch Ljava/io/IOException; {:try_start_cd .. :try_end_ff} :catch_161

    const/4 v1, 0x1

    if-eq v0, v1, :cond_121

    const/4 v1, 0x2

    if-eq v0, v1, :cond_11d

    const/4 v1, 0x4

    if-eq v0, v1, :cond_119

    const/4 v1, 0x5

    if-eq v0, v1, :cond_115

    const/4 v1, 0x6

    if-eq v0, v1, :cond_111

    .line 1131
    const/4 v0, -0x7

    move v1, v0

    .end local v15    # "returnValue":I
    .local v0, "returnValue":I
    goto :goto_124

    .line 1128
    .end local v0    # "returnValue":I
    .restart local v15    # "returnValue":I
    :cond_111
    const/16 v0, -0xbbe

    .line 1129
    .end local v15    # "returnValue":I
    .restart local v0    # "returnValue":I
    move v1, v0

    goto :goto_124

    .line 1125
    .end local v0    # "returnValue":I
    .restart local v15    # "returnValue":I
    :cond_115
    const/16 v0, -0xbb9

    .line 1126
    .end local v15    # "returnValue":I
    .restart local v0    # "returnValue":I
    move v1, v0

    goto :goto_124

    .line 1122
    .end local v0    # "returnValue":I
    .restart local v15    # "returnValue":I
    :cond_119
    const/16 v0, -0xbb8

    .line 1123
    .end local v15    # "returnValue":I
    .restart local v0    # "returnValue":I
    move v1, v0

    goto :goto_124

    .line 1119
    .end local v0    # "returnValue":I
    .restart local v15    # "returnValue":I
    :cond_11d
    const/16 v0, -0xbba

    .line 1120
    .end local v15    # "returnValue":I
    .restart local v0    # "returnValue":I
    move v1, v0

    goto :goto_124

    .line 1116
    .end local v0    # "returnValue":I
    .restart local v15    # "returnValue":I
    :cond_121
    const/16 v0, -0xbbc

    .line 1117
    .end local v15    # "returnValue":I
    .restart local v0    # "returnValue":I
    move v1, v0

    .line 1135
    .end local v0    # "returnValue":I
    .local v1, "returnValue":I
    :goto_124
    :try_start_124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", returnValue : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13e
    .catch Ljava/io/IOException; {:try_start_124 .. :try_end_13e} :catch_13f

    .line 1136
    return v1

    .line 1155
    .end local v2    # "verifyRet":I
    :catch_13f
    move-exception v0

    move v15, v1

    move/from16 v2, v20

    goto :goto_18a

    .line 1140
    .end local v1    # "returnValue":I
    .restart local v2    # "verifyRet":I
    .restart local v15    # "returnValue":I
    :cond_144
    :try_start_144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " fail to install"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1141
    invoke-static {v14, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15e
    .catch Ljava/io/IOException; {:try_start_144 .. :try_end_15e} :catch_161

    .line 1144
    .end local v2    # "verifyRet":I
    :goto_15e
    move/from16 v2, v20

    goto :goto_188

    .line 1155
    :catch_161
    move-exception v0

    move/from16 v2, v20

    goto :goto_18a

    .line 1146
    .end local v20    # "allowInstall":Z
    .local v2, "allowInstall":Z
    :cond_165
    move-object v0, v6

    if-eqz v17, :cond_188

    .line 1148
    if-nez v16, :cond_185

    .line 1149
    const/16 v1, 0x10

    :try_start_16c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->getPkgDigest()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v1, v0, v12}, Lcom/android/server/asks/ASKSManagerService;->setSamsungAnalyticsLog(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_185
    .catch Ljava/io/IOException; {:try_start_16c .. :try_end_185} :catch_189

    .line 1151
    :cond_185
    const/16 v0, -0xbbb

    .line 1152
    .end local v15    # "returnValue":I
    .restart local v0    # "returnValue":I
    return v0

    .line 1157
    .end local v0    # "returnValue":I
    .restart local v15    # "returnValue":I
    :cond_188
    :goto_188
    goto :goto_1a2

    .line 1155
    :catch_189
    move-exception v0

    .line 1156
    .local v0, "e":Ljava/io/IOException;
    :goto_18a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ERROR"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1160
    .end local v0    # "e":Ljava/io/IOException;
    :goto_1a2
    const-string v0, "com.sec.android.preloadinstaller"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_249

    .line 1162
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1163
    .local v0, "adpPackagesList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/asks/ADPContainer;>;"
    invoke-direct {v8, v0}, Lcom/android/server/asks/ASKSManagerService;->getADPDataFromXML(Ljava/util/HashMap;)V

    .line 1165
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->getPkgNameHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_249

    .line 1167
    invoke-static/range {p4 .. p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 1168
    .local v1, "hashCode":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "target ADP - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AASA_ASKSManager_ADP"

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1170
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->getPkgNameHash()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/asks/ADPContainer;

    .line 1173
    .local v3, "adpContainer":Lcom/android/server/asks/ADPContainer;
    invoke-virtual {v3}, Lcom/android/server/asks/ADPContainer;->getADPPolicy()Ljava/util/ArrayList;

    move-result-object v5

    invoke-static {v1}, Lcom/android/server/asks/ADPOperation;->isSameCategoryByHashCode(Ljava/lang/String;)Ljava/util/function/Predicate;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/asks/ADPOperation;->filterADPPolicy(Ljava/util/List;Ljava/util/function/Predicate;)Ljava/util/List;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 1180
    .local v5, "targetList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/asks/ADPContainer$ADPPolicy;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-eqz v6, :cond_243

    .line 1182
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "target list has size "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1185
    invoke-static {v5}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1186
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/asks/ADPContainer$ADPPolicy;

    .line 1188
    .local v6, "target":Lcom/android/server/asks/ADPContainer$ADPPolicy;
    if-eqz v6, :cond_23b

    .line 1189
    const-string/jumbo v7, "picked one adp policy"

    invoke-static {v4, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1192
    invoke-static/range {p4 .. p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v6}, Lcom/android/server/asks/ADPOperation;->isGreaterOrEqual(Ljava/lang/String;Lcom/android/server/asks/ADPContainer$ADPPolicy;)Z

    move-result v7

    if-nez v7, :cond_243

    .line 1194
    const-string/jumbo v7, "install fail, cannot back to the previous version"

    invoke-static {v4, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1195
    const/16 v4, -0xbbd

    .line 1196
    .end local v15    # "returnValue":I
    .local v4, "returnValue":I
    return v4

    .line 1200
    .end local v4    # "returnValue":I
    .restart local v15    # "returnValue":I
    :cond_23b
    const-string v7, "cannot get target policy"

    invoke-static {v4, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1201
    const/16 v4, -0xbbd

    .line 1202
    .end local v15    # "returnValue":I
    .restart local v4    # "returnValue":I
    return v4

    .line 1205
    .end local v4    # "returnValue":I
    .end local v6    # "target":Lcom/android/server/asks/ADPContainer$ADPPolicy;
    .restart local v15    # "returnValue":I
    :cond_243
    const-string/jumbo v6, "successs"

    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1210
    .end local v0    # "adpPackagesList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/asks/ADPContainer;>;"
    .end local v1    # "hashCode":Ljava/lang/String;
    .end local v3    # "adpContainer":Lcom/android/server/asks/ADPContainer;
    .end local v5    # "targetList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/asks/ADPContainer$ADPPolicy;>;"
    :cond_249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is installing.."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1211
    return v15
.end method

.method private parseXMLNew(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "target"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2219
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2220
    .local v0, "mapValue":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "NONE"

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2222
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/asks/ASKSManagerService;->parseXMLNew(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/HashMap;Ljava/util/ArrayList;)V

    .line 2224
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method

.method private parseXMLNew(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/HashMap;)V
    .registers 4
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2214
    .local p2, "mapValue":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/asks/ASKSManagerService;->parseXMLNew(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/HashMap;Ljava/util/ArrayList;)V

    .line 2215
    return-void
.end method

.method private parseXMLNew(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/HashMap;Ljava/util/ArrayList;)V
    .registers 10
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2229
    .local p2, "mapValue":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local p3, "permission":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 2230
    .local v0, "eventType":I
    :goto_4
    const/4 v1, 0x1

    if-eq v0, v1, :cond_51

    .line 2231
    const/4 v2, 0x0

    .line 2232
    .local v2, "name":Ljava/lang/String;
    const/4 v3, 0x2

    if-eq v0, v3, :cond_c

    goto :goto_4c

    .line 2234
    :cond_c
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 2236
    if-eqz v2, :cond_4c

    .line 2237
    invoke-virtual {p2, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "AASA_ASKSManager"

    const/4 v5, 0x0

    if-eqz v3, :cond_2f

    .line 2238
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v3

    if-eq v3, v1, :cond_27

    .line 2239
    const-string/jumbo v1, "this is an exceptional case"

    invoke-static {v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2241
    :cond_27
    invoke-interface {p1, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v2, v1}, Ljava/util/HashMap;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4c

    .line 2242
    :cond_2f
    if-eqz p3, :cond_4c

    const-string v3, "PERMISSION"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4c

    .line 2243
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v3

    if-eq v3, v1, :cond_45

    .line 2244
    const-string/jumbo v1, "this is an exceptional case for permission"

    invoke-static {v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2246
    :cond_45
    invoke-interface {p1, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2264
    :cond_4c
    :goto_4c
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 2265
    .end local v2    # "name":Ljava/lang/String;
    goto :goto_4

    .line 2266
    :cond_51
    return-void
.end method

.method private readDeletable(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    .registers 7
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 3097
    iget-object v0, p0, Lcom/android/server/asks/ASKSManagerService;->mASKSStates:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/asks/ASKSManagerService$ASKSState;

    .line 3098
    .local v0, "state":Lcom/android/server/asks/ASKSManagerService$ASKSState;
    if-eqz v0, :cond_27

    .line 3100
    const/4 v1, 0x0

    const-string/jumbo v2, "version"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3101
    .local v2, "version":Ljava/lang/String;
    const-string v3, "datelimit"

    invoke-interface {p1, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3102
    .local v1, "datelimit":Ljava/lang/String;
    if-eqz v2, :cond_26

    if-nez v1, :cond_1d

    goto :goto_26

    .line 3105
    :cond_1d
    new-instance v3, Lcom/android/server/asks/ASKSManagerService$Deletable;

    invoke-direct {v3, v2, v1}, Lcom/android/server/asks/ASKSManagerService$Deletable;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3106
    .local v3, "deletable":Lcom/android/server/asks/ASKSManagerService$Deletable;
    invoke-virtual {v0, v3}, Lcom/android/server/asks/ASKSManagerService$ASKSState;->setDeletable(Lcom/android/server/asks/ASKSManagerService$Deletable;)V

    goto :goto_27

    .line 3103
    .end local v3    # "deletable":Lcom/android/server/asks/ASKSManagerService$Deletable;
    :cond_26
    :goto_26
    return-void

    .line 3108
    .end local v1    # "datelimit":Ljava/lang/String;
    .end local v2    # "version":Ljava/lang/String;
    :cond_27
    :goto_27
    return-void
.end method

.method private readEMMode(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    .registers 6
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 3084
    iget-object v0, p0, Lcom/android/server/asks/ASKSManagerService;->mASKSStates:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/asks/ASKSManagerService$ASKSState;

    .line 3085
    .local v0, "state":Lcom/android/server/asks/ASKSManagerService$ASKSState;
    if-eqz v0, :cond_1d

    .line 3087
    const/4 v1, 0x0

    const-string/jumbo v2, "value"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3088
    .local v1, "hexMode":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 3089
    .local v2, "mode":I
    invoke-virtual {v0, v2}, Lcom/android/server/asks/ASKSManagerService$ASKSState;->setEMMode(I)V

    .line 3091
    .end local v1    # "hexMode":Ljava/lang/String;
    .end local v2    # "mode":I
    :cond_1d
    return-void
.end method

.method private readPackage(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 9
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 3371
    const/4 v0, 0x0

    const-string/jumbo v1, "name"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3373
    .local v0, "pkgName":Ljava/lang/String;
    new-instance v1, Lcom/android/server/asks/ASKSManagerService$ASKSState;

    invoke-direct {v1}, Lcom/android/server/asks/ASKSManagerService$ASKSState;-><init>()V

    .line 3374
    .local v1, "state":Lcom/android/server/asks/ASKSManagerService$ASKSState;
    iget-object v2, p0, Lcom/android/server/asks/ASKSManagerService;->mASKSStates:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3376
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    .line 3378
    .local v2, "outerDepth":I
    :cond_16
    :goto_16
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    move v4, v3

    .local v4, "type":I
    const/4 v5, 0x1

    if-eq v3, v5, :cond_74

    const/4 v3, 0x3

    if-ne v4, v3, :cond_27

    .line 3379
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    if-le v5, v2, :cond_74

    .line 3380
    :cond_27
    if-eq v4, v3, :cond_16

    const/4 v3, 0x4

    if-ne v4, v3, :cond_2d

    .line 3381
    goto :goto_16

    .line 3384
    :cond_2d
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 3385
    .local v3, "tagName":Ljava/lang/String;
    const-string/jumbo v5, "restrict"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3e

    .line 3386
    invoke-direct {p0, p1, v0}, Lcom/android/server/asks/ASKSManagerService;->readRestrict(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    goto :goto_73

    .line 3387
    :cond_3e
    const-string v5, "emmode"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4a

    .line 3388
    invoke-direct {p0, p1, v0}, Lcom/android/server/asks/ASKSManagerService;->readEMMode(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    goto :goto_73

    .line 3389
    :cond_4a
    const-string v5, "delete"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_56

    .line 3390
    invoke-direct {p0, p1, v0}, Lcom/android/server/asks/ASKSManagerService;->readDeletable(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    goto :goto_73

    .line 3393
    :cond_56
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown element under <pkg>: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ASKSManager"

    invoke-static {v6, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3394
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3396
    .end local v3    # "tagName":Ljava/lang/String;
    :goto_73
    goto :goto_16

    .line 3397
    :cond_74
    return-void
.end method

.method private readRestrict(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    .registers 6
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 2884
    iget-object v0, p0, Lcom/android/server/asks/ASKSManagerService;->mASKSStates:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/asks/ASKSManagerService$ASKSState;

    .line 2885
    .local v0, "state":Lcom/android/server/asks/ASKSManagerService$ASKSState;
    if-eqz v0, :cond_16

    .line 2886
    new-instance v1, Lcom/android/server/asks/ASKSManagerService$Restrict;

    invoke-direct {v1}, Lcom/android/server/asks/ASKSManagerService$Restrict;-><init>()V

    .line 2887
    .local v1, "r":Lcom/android/server/asks/ASKSManagerService$Restrict;
    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/asks/ASKSManagerService;->readRestrictRule(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/asks/ASKSManagerService$Restrict;Ljava/lang/String;)V

    .line 2888
    invoke-virtual {v0, v1}, Lcom/android/server/asks/ASKSManagerService$ASKSState;->setRestrict(Lcom/android/server/asks/ASKSManagerService$Restrict;)V

    .line 2890
    .end local v1    # "r":Lcom/android/server/asks/ASKSManagerService$Restrict;
    :cond_16
    return-void
.end method

.method private readRestrictPermissions(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/ArrayList;)V
    .registers 9
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2936
    .local p2, "permissionList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 2939
    .local v0, "outerDepth":I
    :cond_4
    :goto_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v2, v1

    .local v2, "p":I
    const/4 v3, 0x1

    if-eq v1, v3, :cond_3a

    const/4 v1, 0x3

    if-ne v2, v1, :cond_15

    .line 2940
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_3a

    .line 2941
    :cond_15
    if-eq v2, v1, :cond_4

    const/4 v1, 0x4

    if-ne v2, v1, :cond_1b

    .line 2942
    goto :goto_4

    .line 2945
    :cond_1b
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 2946
    .local v1, "tagName":Ljava/lang/String;
    const-string/jumbo v3, "permission"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_39

    .line 2947
    const/4 v3, 0x0

    const-string/jumbo v4, "value"

    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_39

    .line 2948
    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2950
    .end local v1    # "tagName":Ljava/lang/String;
    :cond_39
    goto :goto_4

    .line 2952
    :cond_3a
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_41

    .line 2953
    const/4 p2, 0x0

    .line 2955
    :cond_41
    return-void
.end method

.method private readRestrictRule(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/asks/ASKSManagerService$Restrict;Ljava/lang/String;)V
    .registers 12
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "r"    # Lcom/android/server/asks/ASKSManagerService$Restrict;
    .param p3, "version"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 2894
    const/4 v0, 0x0

    .line 2895
    .local v0, "rVersion":Ljava/lang/String;
    const/4 v1, 0x0

    const-string/jumbo v2, "type"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2896
    .local v2, "type":Ljava/lang/String;
    const-string v3, "datelimit"

    invoke-interface {p1, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2897
    .local v3, "dateLimit":Ljava/lang/String;
    const/4 v4, 0x0

    .line 2898
    .local v4, "from":Ljava/lang/String;
    const/4 v5, 0x0

    .line 2900
    .local v5, "permissionList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez p3, :cond_1b

    .line 2901
    const-string/jumbo v6, "version"

    invoke-interface {p1, v1, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1c

    .line 2903
    :cond_1b
    move-object v0, p3

    .line 2906
    :goto_1c
    invoke-virtual {p2}, Lcom/android/server/asks/ASKSManagerService$Restrict;->getFrom()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_2a

    .line 2907
    const-string/jumbo v6, "from"

    invoke-interface {p1, v1, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .end local v4    # "from":Ljava/lang/String;
    .local v1, "from":Ljava/lang/String;
    goto :goto_2e

    .line 2909
    .end local v1    # "from":Ljava/lang/String;
    .restart local v4    # "from":Ljava/lang/String;
    :cond_2a
    invoke-virtual {p2}, Lcom/android/server/asks/ASKSManagerService$Restrict;->getFrom()Ljava/lang/String;

    move-result-object v1

    .line 2912
    .end local v4    # "from":Ljava/lang/String;
    .restart local v1    # "from":Ljava/lang/String;
    :goto_2e
    const/4 v4, 0x1

    const/4 v6, 0x0

    if-nez v0, :cond_34

    move v7, v4

    goto :goto_35

    :cond_34
    move v7, v6

    :goto_35
    if-nez v2, :cond_38

    goto :goto_39

    :cond_38
    move v4, v6

    :goto_39
    or-int/2addr v4, v7

    if-nez v4, :cond_62

    if-eqz v3, :cond_62

    if-nez v1, :cond_41

    goto :goto_62

    .line 2917
    :cond_41
    const-string v4, "REVOKE"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_52

    .line 2918
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v4

    .line 2919
    invoke-direct {p0, p1, v5}, Lcom/android/server/asks/ASKSManagerService;->readRestrictPermissions(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/ArrayList;)V

    .line 2927
    :cond_52
    invoke-virtual {p2, v0}, Lcom/android/server/asks/ASKSManagerService$Restrict;->setVersion(Ljava/lang/String;)V

    .line 2928
    invoke-virtual {p2, v2}, Lcom/android/server/asks/ASKSManagerService$Restrict;->setType(Ljava/lang/String;)V

    .line 2929
    invoke-virtual {p2, v3}, Lcom/android/server/asks/ASKSManagerService$Restrict;->setDateLimit(Ljava/lang/String;)V

    .line 2930
    invoke-virtual {p2, v1}, Lcom/android/server/asks/ASKSManagerService$Restrict;->setFrom(Ljava/lang/String;)V

    .line 2931
    invoke-virtual {p2, v5}, Lcom/android/server/asks/ASKSManagerService$Restrict;->setPermissionList(Ljava/util/ArrayList;)V

    .line 2932
    return-void

    .line 2913
    :cond_62
    :goto_62
    const/4 p2, 0x0

    .line 2914
    return-void
.end method

.method private readState()V
    .registers 1

    .line 3491
    invoke-direct {p0}, Lcom/android/server/asks/ASKSManagerService;->readStateInner()V

    .line 3492
    return-void
.end method

.method private readStateInner()V
    .registers 13

    .line 3496
    iget-object v0, p0, Lcom/android/server/asks/ASKSManagerService;->mFile:Landroid/util/AtomicFile;

    monitor-enter v0

    .line 3497
    :try_start_3
    monitor-enter p0
    :try_end_4
    .catchall {:try_start_3 .. :try_end_4} :catchall_1a9

    .line 3500
    :try_start_4
    iget-object v1, p0, Lcom/android/server/asks/ASKSManagerService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v1}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v1
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_a} :catch_182
    .catchall {:try_start_4 .. :try_end_a} :catchall_180

    .line 3504
    .local v1, "stream":Ljava/io/FileInputStream;
    nop

    .line 3505
    const/4 v2, 0x0

    .line 3506
    .local v2, "success":Z
    :try_start_c
    iget-object v3, p0, Lcom/android/server/asks/ASKSManagerService;->mASKSStates:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_180

    .line 3509
    :try_start_11
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 3510
    .local v3, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 3512
    :goto_1e
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    move v5, v4

    .local v5, "type":I
    const/4 v6, 0x1

    const/4 v7, 0x2

    if-eq v4, v7, :cond_2a

    if-eq v5, v6, :cond_2a

    goto :goto_1e

    .line 3517
    :cond_2a
    if-ne v5, v7, :cond_93

    .line 3521
    const/4 v4, 0x0

    const-string/jumbo v7, "version"

    invoke-interface {v3, v4, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3522
    .local v4, "versionString":Ljava/lang/String;
    if-eqz v4, :cond_3e

    .line 3524
    sput-object v4, Lcom/android/server/asks/ASKSManagerService;->mASKSPolicyVersion:Ljava/lang/String;

    .line 3525
    const-string/jumbo v7, "security.ASKS.policy_version"

    invoke-static {v7, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3528
    :cond_3e
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v7

    .line 3529
    .local v7, "outerDepth":I
    :cond_42
    :goto_42
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    move v5, v8

    if-eq v8, v6, :cond_86

    const/4 v8, 0x3

    if-ne v5, v8, :cond_52

    .line 3530
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v9

    if-le v9, v7, :cond_86

    .line 3531
    :cond_52
    if-eq v5, v8, :cond_42

    const/4 v8, 0x4

    if-ne v5, v8, :cond_58

    .line 3532
    goto :goto_42

    .line 3535
    :cond_58
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 3536
    .local v8, "tagName":Ljava/lang/String;
    const-string v9, "PACKAGE"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_68

    .line 3537
    invoke-direct {p0, v3}, Lcom/android/server/asks/ASKSManagerService;->readPackage(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_85

    .line 3539
    :cond_68
    const-string v9, "ASKSManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unknown element under <asks>: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3540
    invoke-static {v3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_85
    .catch Ljava/lang/IllegalStateException; {:try_start_11 .. :try_end_85} :catch_14b
    .catch Ljava/lang/NullPointerException; {:try_start_11 .. :try_end_85} :catch_129
    .catch Ljava/lang/NumberFormatException; {:try_start_11 .. :try_end_85} :catch_107
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_11 .. :try_end_85} :catch_e5
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_85} :catch_c2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_11 .. :try_end_85} :catch_9f
    .catchall {:try_start_11 .. :try_end_85} :catchall_9c

    .line 3542
    .end local v8    # "tagName":Ljava/lang/String;
    :goto_85
    goto :goto_42

    .line 3543
    :cond_86
    const/4 v2, 0x1

    .line 3557
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v4    # "versionString":Ljava/lang/String;
    .end local v5    # "type":I
    .end local v7    # "outerDepth":I
    if-nez v2, :cond_8e

    .line 3558
    :try_start_89
    iget-object v3, p0, Lcom/android/server/asks/ASKSManagerService;->mASKSStates:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V
    :try_end_8e
    .catchall {:try_start_89 .. :try_end_8e} :catchall_180

    .line 3561
    :cond_8e
    :try_start_8e
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_91
    .catch Ljava/io/IOException; {:try_start_8e .. :try_end_91} :catch_16d
    .catchall {:try_start_8e .. :try_end_91} :catchall_180

    goto/16 :goto_16c

    .line 3518
    .restart local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v5    # "type":I
    :cond_93
    :try_start_93
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v6, "no start tag found"

    invoke-direct {v4, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v1    # "stream":Ljava/io/FileInputStream;
    .end local v2    # "success":Z
    .end local p0    # "this":Lcom/android/server/asks/ASKSManagerService;
    throw v4
    :try_end_9c
    .catch Ljava/lang/IllegalStateException; {:try_start_93 .. :try_end_9c} :catch_14b
    .catch Ljava/lang/NullPointerException; {:try_start_93 .. :try_end_9c} :catch_129
    .catch Ljava/lang/NumberFormatException; {:try_start_93 .. :try_end_9c} :catch_107
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_93 .. :try_end_9c} :catch_e5
    .catch Ljava/io/IOException; {:try_start_93 .. :try_end_9c} :catch_c2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_93 .. :try_end_9c} :catch_9f
    .catchall {:try_start_93 .. :try_end_9c} :catchall_9c

    .line 3557
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v5    # "type":I
    .restart local v1    # "stream":Ljava/io/FileInputStream;
    .restart local v2    # "success":Z
    .restart local p0    # "this":Lcom/android/server/asks/ASKSManagerService;
    :catchall_9c
    move-exception v3

    goto/16 :goto_172

    .line 3554
    :catch_9f
    move-exception v3

    .line 3555
    .local v3, "e":Ljava/lang/IndexOutOfBoundsException;
    :try_start_a0
    const-string v4, "ASKSManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed parsing "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b6
    .catchall {:try_start_a0 .. :try_end_b6} :catchall_9c

    .line 3557
    .end local v3    # "e":Ljava/lang/IndexOutOfBoundsException;
    if-nez v2, :cond_bd

    .line 3558
    :try_start_b8
    iget-object v3, p0, Lcom/android/server/asks/ASKSManagerService;->mASKSStates:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V
    :try_end_bd
    .catchall {:try_start_b8 .. :try_end_bd} :catchall_180

    .line 3561
    :cond_bd
    :try_start_bd
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_c0
    .catch Ljava/io/IOException; {:try_start_bd .. :try_end_c0} :catch_16d
    .catchall {:try_start_bd .. :try_end_c0} :catchall_180

    goto/16 :goto_16c

    .line 3552
    :catch_c2
    move-exception v3

    .line 3553
    .local v3, "e":Ljava/io/IOException;
    :try_start_c3
    const-string v4, "ASKSManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed parsing "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d9
    .catchall {:try_start_c3 .. :try_end_d9} :catchall_9c

    .line 3557
    .end local v3    # "e":Ljava/io/IOException;
    if-nez v2, :cond_e0

    .line 3558
    :try_start_db
    iget-object v3, p0, Lcom/android/server/asks/ASKSManagerService;->mASKSStates:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V
    :try_end_e0
    .catchall {:try_start_db .. :try_end_e0} :catchall_180

    .line 3561
    :cond_e0
    :try_start_e0
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_e3
    .catch Ljava/io/IOException; {:try_start_e0 .. :try_end_e3} :catch_16d
    .catchall {:try_start_e0 .. :try_end_e3} :catchall_180

    goto/16 :goto_16c

    .line 3550
    :catch_e5
    move-exception v3

    .line 3551
    .local v3, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_e6
    const-string v4, "ASKSManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed parsing "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_fc
    .catchall {:try_start_e6 .. :try_end_fc} :catchall_9c

    .line 3557
    .end local v3    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    if-nez v2, :cond_103

    .line 3558
    :try_start_fe
    iget-object v3, p0, Lcom/android/server/asks/ASKSManagerService;->mASKSStates:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V
    :try_end_103
    .catchall {:try_start_fe .. :try_end_103} :catchall_180

    .line 3561
    :cond_103
    :try_start_103
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_106
    .catch Ljava/io/IOException; {:try_start_103 .. :try_end_106} :catch_16d
    .catchall {:try_start_103 .. :try_end_106} :catchall_180

    goto :goto_16c

    .line 3548
    :catch_107
    move-exception v3

    .line 3549
    .local v3, "e":Ljava/lang/NumberFormatException;
    :try_start_108
    const-string v4, "ASKSManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed parsing "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11e
    .catchall {:try_start_108 .. :try_end_11e} :catchall_9c

    .line 3557
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    if-nez v2, :cond_125

    .line 3558
    :try_start_120
    iget-object v3, p0, Lcom/android/server/asks/ASKSManagerService;->mASKSStates:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V
    :try_end_125
    .catchall {:try_start_120 .. :try_end_125} :catchall_180

    .line 3561
    :cond_125
    :try_start_125
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_128
    .catch Ljava/io/IOException; {:try_start_125 .. :try_end_128} :catch_16d
    .catchall {:try_start_125 .. :try_end_128} :catchall_180

    goto :goto_16c

    .line 3546
    :catch_129
    move-exception v3

    .line 3547
    .local v3, "e":Ljava/lang/NullPointerException;
    :try_start_12a
    const-string v4, "ASKSManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed parsing "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_140
    .catchall {:try_start_12a .. :try_end_140} :catchall_9c

    .line 3557
    .end local v3    # "e":Ljava/lang/NullPointerException;
    if-nez v2, :cond_147

    .line 3558
    :try_start_142
    iget-object v3, p0, Lcom/android/server/asks/ASKSManagerService;->mASKSStates:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V
    :try_end_147
    .catchall {:try_start_142 .. :try_end_147} :catchall_180

    .line 3561
    :cond_147
    :try_start_147
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_14a
    .catch Ljava/io/IOException; {:try_start_147 .. :try_end_14a} :catch_16d
    .catchall {:try_start_147 .. :try_end_14a} :catchall_180

    goto :goto_16c

    .line 3544
    :catch_14b
    move-exception v3

    .line 3545
    .local v3, "e":Ljava/lang/IllegalStateException;
    :try_start_14c
    const-string v4, "ASKSManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed parsing "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_162
    .catchall {:try_start_14c .. :try_end_162} :catchall_9c

    .line 3557
    .end local v3    # "e":Ljava/lang/IllegalStateException;
    if-nez v2, :cond_169

    .line 3558
    :try_start_164
    iget-object v3, p0, Lcom/android/server/asks/ASKSManagerService;->mASKSStates:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V
    :try_end_169
    .catchall {:try_start_164 .. :try_end_169} :catchall_180

    .line 3561
    :cond_169
    :try_start_169
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_16c
    .catch Ljava/io/IOException; {:try_start_169 .. :try_end_16c} :catch_16d
    .catchall {:try_start_169 .. :try_end_16c} :catchall_180

    .line 3563
    :goto_16c
    goto :goto_16f

    .line 3562
    :catch_16d
    move-exception v3

    .line 3564
    nop

    .line 3565
    .end local v1    # "stream":Ljava/io/FileInputStream;
    .end local v2    # "success":Z
    :goto_16f
    :try_start_16f
    monitor-exit p0
    :try_end_170
    .catchall {:try_start_16f .. :try_end_170} :catchall_180

    .line 3566
    :try_start_170
    monitor-exit v0
    :try_end_171
    .catchall {:try_start_170 .. :try_end_171} :catchall_1a9

    .line 3567
    return-void

    .line 3557
    .restart local v1    # "stream":Ljava/io/FileInputStream;
    .restart local v2    # "success":Z
    :goto_172
    if-nez v2, :cond_179

    .line 3558
    :try_start_174
    iget-object v4, p0, Lcom/android/server/asks/ASKSManagerService;->mASKSStates:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V
    :try_end_179
    .catchall {:try_start_174 .. :try_end_179} :catchall_180

    .line 3561
    :cond_179
    :try_start_179
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_17c
    .catch Ljava/io/IOException; {:try_start_179 .. :try_end_17c} :catch_17d
    .catchall {:try_start_179 .. :try_end_17c} :catchall_180

    .line 3563
    goto :goto_17e

    .line 3562
    :catch_17d
    move-exception v4

    .line 3564
    :goto_17e
    nop

    .end local p0    # "this":Lcom/android/server/asks/ASKSManagerService;
    :try_start_17f
    throw v3

    .line 3565
    .end local v1    # "stream":Ljava/io/FileInputStream;
    .end local v2    # "success":Z
    .restart local p0    # "this":Lcom/android/server/asks/ASKSManagerService;
    :catchall_180
    move-exception v1

    goto :goto_1a7

    .line 3501
    :catch_182
    move-exception v1

    .line 3502
    .local v1, "e":Ljava/io/FileNotFoundException;
    const-string v2, "AASA_ASKSManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No existing asks rules "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/asks/ASKSManagerService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v4}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "; starting empty"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3503
    monitor-exit p0
    :try_end_1a5
    .catchall {:try_start_17f .. :try_end_1a5} :catchall_180

    :try_start_1a5
    monitor-exit v0
    :try_end_1a6
    .catchall {:try_start_1a5 .. :try_end_1a6} :catchall_1a9

    return-void

    .line 3565
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :goto_1a7
    :try_start_1a7
    monitor-exit p0
    :try_end_1a8
    .catchall {:try_start_1a7 .. :try_end_1a8} :catchall_180

    .end local p0    # "this":Lcom/android/server/asks/ASKSManagerService;
    :try_start_1a8
    throw v1

    .line 3566
    .restart local p0    # "this":Lcom/android/server/asks/ASKSManagerService;
    :catchall_1a9
    move-exception v1

    monitor-exit v0
    :try_end_1ab
    .catchall {:try_start_1a8 .. :try_end_1ab} :catchall_1a9

    throw v1
.end method

.method private readyForBooting(Landroid/content/Context;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;

    .line 3113
    const-string v0, "AASA_ASKSManager_SECURETIME"

    const-string/jumbo v1, "readyForBooting : "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3114
    if-nez p1, :cond_10

    .line 3115
    const-string v1, "context is null. "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3116
    return-void

    .line 3118
    :cond_10
    invoke-direct {p0, p1}, Lcom/android/server/asks/ASKSManagerService;->checkNetworkConnection(Landroid/content/Context;)I

    move-result v0

    .line 3119
    .local v0, "networkStatus":I
    invoke-direct {p0, p1}, Lcom/android/server/asks/ASKSManagerService;->isAutoTimeEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2a

    if-lez v0, :cond_2a

    .line 3121
    const/4 v3, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/asks/ASKSManagerService;->setTrustedFile(IJJ)V

    goto :goto_55

    .line 3126
    :cond_2a
    invoke-direct {p0}, Lcom/android/server/asks/ASKSManagerService;->hasTrustedTime()Z

    move-result v1

    if-eqz v1, :cond_55

    .line 3128
    invoke-direct {p0}, Lcom/android/server/asks/ASKSManagerService;->getTrustedFile()[Ljava/lang/String;

    move-result-object v1

    .line 3129
    .local v1, "listlevel2":[Ljava/lang/String;
    if-eqz v1, :cond_55

    array-length v2, v1

    const/4 v3, 0x3

    if-ne v2, v3, :cond_55

    .line 3130
    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 3131
    .local v2, "grade":I
    const/4 v3, 0x2

    if-ge v2, v3, :cond_45

    .line 3132
    const/4 v2, 0x2

    .line 3133
    :cond_45
    const/4 v3, 0x1

    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    move-object v3, p0

    move v4, v2

    invoke-direct/range {v3 .. v8}, Lcom/android/server/asks/ASKSManagerService;->setTrustedFile(IJJ)V

    .line 3141
    .end local v1    # "listlevel2":[Ljava/lang/String;
    .end local v2    # "grade":I
    :cond_55
    :goto_55
    return-void
.end method

.method private setSamsungAnalyticsLog(ILjava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p1, "type"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "extra"    # Ljava/lang/String;

    .line 3335
    const-string v0, ","

    :try_start_2
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/system/.aasa/SamsungAnalyticsLog"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3336
    .local v1, "fname":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/32 v4, 0x7a120

    cmp-long v2, v2, v4

    if-gez v2, :cond_3d

    .line 3337
    new-instance v2, Ljava/io/FileOutputStream;

    const/4 v3, 0x1

    invoke-direct {v2, v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 3338
    .local v2, "out":Ljava/io/FileOutputStream;
    new-instance v3, Lcom/android/internal/util/FastPrintWriter;

    invoke-direct {v3, v2}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 3339
    .local v3, "pw":Ljava/io/PrintWriter;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3340
    invoke-virtual {v3}, Ljava/io/PrintWriter;->close()V
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_3d} :catch_3e

    .line 3344
    .end local v1    # "fname":Ljava/io/File;
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .end local v3    # "pw":Ljava/io/PrintWriter;
    :cond_3d
    goto :goto_56

    .line 3342
    :catch_3e
    move-exception v0

    .line 3343
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSamsungAnalyticsLog "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AASA_ASKSManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3345
    .end local v0    # "e":Ljava/io/IOException;
    :goto_56
    return-void
.end method

.method private setTrustTimeByToken(Ljava/lang/String;)V
    .registers 8
    .param p1, "date"    # Ljava/lang/String;

    .line 3297
    invoke-direct {p0, p1}, Lcom/android/server/asks/ASKSManagerService;->convertStringToMills(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const/4 v1, 0x3

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/asks/ASKSManagerService;->setTrustedFile(IJJ)V

    .line 3298
    return-void
.end method

.method private setTrustedFile(IJJ)V
    .registers 11
    .param p1, "grade"    # I
    .param p2, "currentTime"    # J
    .param p4, "elapsedTime"    # J

    .line 3234
    const-string v0, ","

    const-string v1, "AASA_ASKSManager_SECURETIME"

    const-string/jumbo v2, "setTrustedFile : "

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3235
    const/4 v2, 0x0

    .line 3236
    .local v2, "pw":Ljava/io/PrintWriter;
    invoke-direct {p0, p2, p3}, Lcom/android/server/asks/ASKSManagerService;->convertMillsToString(J)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "security.ASKS.time_value"

    invoke-static {v4, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3238
    :try_start_15
    new-instance v3, Ljava/io/PrintWriter;

    const-string v4, "/data/system/.aasa/trustedTime"

    invoke-direct {v3, v4}, Ljava/io/PrintWriter;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    .line 3239
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3240
    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V

    .line 3241
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_43} :catch_4a
    .catchall {:try_start_15 .. :try_end_43} :catchall_48

    .line 3245
    nop

    .line 3246
    :goto_44
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    goto :goto_64

    .line 3245
    :catchall_48
    move-exception v0

    goto :goto_65

    .line 3242
    :catch_4a
    move-exception v0

    .line 3243
    .local v0, "e":Ljava/io/IOException;
    :try_start_4b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setTrustedTime() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_60
    .catchall {:try_start_4b .. :try_end_60} :catchall_48

    .line 3245
    nop

    .end local v0    # "e":Ljava/io/IOException;
    if-eqz v2, :cond_64

    .line 3246
    goto :goto_44

    .line 3248
    :cond_64
    :goto_64
    return-void

    .line 3245
    :goto_65
    if-eqz v2, :cond_6a

    .line 3246
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    .line 3247
    :cond_6a
    throw v0
.end method

.method private toChars([B)[C
    .registers 12
    .param p1, "mSignature"    # [B

    .line 2413
    move-object v0, p1

    .line 2414
    .local v0, "sig":[B
    array-length v1, v0

    .line 2415
    .local v1, "N":I
    mul-int/lit8 v2, v1, 0x2

    .line 2416
    .local v2, "N2":I
    new-array v3, v2, [C

    .line 2418
    .local v3, "text":[C
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_7
    if-ge v4, v1, :cond_32

    .line 2420
    aget-byte v5, v0, v4

    .line 2421
    .local v5, "v":B
    shr-int/lit8 v6, v5, 0x4

    and-int/lit8 v6, v6, 0xf

    .line 2422
    .local v6, "d":I
    mul-int/lit8 v7, v4, 0x2

    const/16 v8, 0xa

    if-lt v6, v8, :cond_19

    add-int/lit8 v9, v6, 0x61

    sub-int/2addr v9, v8

    goto :goto_1b

    :cond_19
    add-int/lit8 v9, v6, 0x30

    :goto_1b
    int-to-char v9, v9

    aput-char v9, v3, v7

    .line 2423
    and-int/lit8 v6, v5, 0xf

    .line 2424
    mul-int/lit8 v7, v4, 0x2

    add-int/lit8 v7, v7, 0x1

    if-lt v6, v8, :cond_2a

    add-int/lit8 v9, v6, 0x61

    sub-int/2addr v9, v8

    goto :goto_2c

    :cond_2a
    add-int/lit8 v9, v6, 0x30

    :goto_2c
    int-to-char v8, v9

    aput-char v8, v3, v7

    .line 2418
    .end local v5    # "v":B
    .end local v6    # "d":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 2426
    .end local v4    # "j":I
    :cond_32
    return-object v3
.end method

.method private updateRestrictRule(Lcom/android/server/asks/ASKSManagerService$ASKSSession;)Z
    .registers 16
    .param p1, "session"    # Lcom/android/server/asks/ASKSManagerService$ASKSSession;

    .line 2712
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2713
    .local v0, "restrictRuleFromFile":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/asks/ASKSManagerService$Restrict;>;"
    const/4 v1, 0x0

    .line 2714
    .local v1, "isEdit":Z
    const/4 v2, 0x0

    .line 2715
    .local v2, "isremoved":Z
    const/4 v3, 0x0

    .line 2717
    .local v3, "isTarget":Z
    invoke-direct {p0, v0, p1}, Lcom/android/server/asks/ASKSManagerService;->getRestrictDataFromXML(Ljava/util/HashMap;Lcom/android/server/asks/ASKSManagerService$ASKSSession;)V

    .line 2719
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    const-string v5, "AASA_ASKSManager_RESTRICTED"

    if-eqz v4, :cond_19

    .line 2720
    const-string v4, "There is no restricted rule."

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2721
    const/4 v2, 0x1

    .line 2724
    :cond_19
    iget-object v4, p0, Lcom/android/server/asks/ASKSManagerService;->mASKSStates:Ljava/util/HashMap;

    if-eqz v4, :cond_11e

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_11e

    .line 2726
    iget-object v4, p0, Lcom/android/server/asks/ASKSManagerService;->mASKSStates:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_11e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 2728
    .local v6, "stateEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/asks/ASKSManagerService$ASKSState;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 2729
    .local v7, "packageName":Ljava/lang/String;
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/asks/ASKSManagerService$ASKSState;

    .line 2742
    .local v8, "state":Lcom/android/server/asks/ASKSManagerService$ASKSState;
    invoke-virtual {v0, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    const-string/jumbo v10, "updateRestictRule() : current restricted rule("

    const-string v11, "Token"

    if-eqz v9, :cond_b4

    .line 2744
    invoke-virtual {v8}, Lcom/android/server/asks/ASKSManagerService$ASKSState;->getRestrict()Lcom/android/server/asks/ASKSManagerService$Restrict;

    move-result-object v9

    .line 2745
    .local v9, "currentRule":Lcom/android/server/asks/ASKSManagerService$Restrict;
    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/asks/ASKSManagerService$Restrict;

    .line 2747
    .local v12, "newRule":Lcom/android/server/asks/ASKSManagerService$Restrict;
    if-eqz v9, :cond_7e

    invoke-virtual {v9}, Lcom/android/server/asks/ASKSManagerService$Restrict;->getFrom()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7e

    .line 2748
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ") is from Token. Skipped."

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2749
    goto :goto_2d

    .line 2754
    :cond_7e
    if-eqz v9, :cond_94

    if-eqz v9, :cond_b3

    invoke-virtual {v12}, Lcom/android/server/asks/ASKSManagerService$Restrict;->getVersion()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v9}, Lcom/android/server/asks/ASKSManagerService$Restrict;->getVersion()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    if-le v10, v11, :cond_b3

    .line 2755
    :cond_94
    invoke-virtual {v8, v12}, Lcom/android/server/asks/ASKSManagerService$ASKSState;->setRestrict(Lcom/android/server/asks/ASKSManagerService$Restrict;)V

    .line 2756
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "updateRestrictRule() : update restricted rule for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2757
    const/4 v1, 0x1

    .line 2759
    .end local v9    # "currentRule":Lcom/android/server/asks/ASKSManagerService$Restrict;
    .end local v12    # "newRule":Lcom/android/server/asks/ASKSManagerService$Restrict;
    :cond_b3
    goto :goto_11c

    .line 2760
    :cond_b4
    invoke-virtual {v8}, Lcom/android/server/asks/ASKSManagerService$ASKSState;->getRestrict()Lcom/android/server/asks/ASKSManagerService$Restrict;

    move-result-object v9

    if-eqz v9, :cond_eb

    invoke-virtual {v8}, Lcom/android/server/asks/ASKSManagerService$ASKSState;->getRestrict()Lcom/android/server/asks/ASKSManagerService$Restrict;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/asks/ASKSManagerService$Restrict;->getFrom()Ljava/lang/String;

    move-result-object v9

    const-string v12, "Policy"

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_eb

    .line 2761
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/android/server/asks/ASKSManagerService$ASKSState;->setRestrict(Lcom/android/server/asks/ASKSManagerService$Restrict;)V

    .line 2762
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "updateRestrictRule() : remove restricted rule for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2763
    const/4 v1, 0x1

    goto :goto_11c

    .line 2764
    :cond_eb
    invoke-virtual {v8}, Lcom/android/server/asks/ASKSManagerService$ASKSState;->getRestrict()Lcom/android/server/asks/ASKSManagerService$Restrict;

    move-result-object v9

    if-eqz v9, :cond_11c

    invoke-virtual {v8}, Lcom/android/server/asks/ASKSManagerService$ASKSState;->getRestrict()Lcom/android/server/asks/ASKSManagerService$Restrict;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/asks/ASKSManagerService$Restrict;->getFrom()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_11c

    .line 2765
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ") is from Token. not removed."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2768
    .end local v6    # "stateEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/asks/ASKSManagerService$ASKSState;>;"
    .end local v7    # "packageName":Ljava/lang/String;
    .end local v8    # "state":Lcom/android/server/asks/ASKSManagerService$ASKSState;
    :cond_11c
    :goto_11c
    goto/16 :goto_2d

    .line 2771
    :cond_11e
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_126
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_177

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 2773
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/asks/ASKSManagerService$Restrict;>;"
    iget-object v7, p0, Lcom/android/server/asks/ASKSManagerService;->mASKSStates:Ljava/util/HashMap;

    if-eqz v7, :cond_141

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_141

    goto :goto_126

    .line 2775
    :cond_141
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updateRestrictRule() : new restricted rule for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2776
    new-instance v7, Lcom/android/server/asks/ASKSManagerService$ASKSState;

    invoke-direct {v7}, Lcom/android/server/asks/ASKSManagerService$ASKSState;-><init>()V

    .line 2777
    .local v7, "newState":Lcom/android/server/asks/ASKSManagerService$ASKSState;
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/asks/ASKSManagerService$Restrict;

    invoke-virtual {v7, v8}, Lcom/android/server/asks/ASKSManagerService$ASKSState;->setRestrict(Lcom/android/server/asks/ASKSManagerService$Restrict;)V

    .line 2778
    iget-object v8, p0, Lcom/android/server/asks/ASKSManagerService;->mASKSStates:Ljava/util/HashMap;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v8, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2779
    const/4 v1, 0x1

    .line 2780
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/asks/ASKSManagerService$Restrict;>;"
    .end local v7    # "newState":Lcom/android/server/asks/ASKSManagerService$ASKSState;
    goto :goto_126

    .line 2782
    :cond_177
    return v1
.end method

.method private updateRestrictedTargetPackages()V
    .registers 8

    .line 2693
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2694
    .local v0, "targetPackages":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/asks/ASKSManagerService;->mASKSStates:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 2696
    .local v1, "clonedMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/asks/ASKSManagerService$ASKSState;>;"
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_56

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 2698
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/asks/ASKSManagerService$ASKSState;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/asks/ASKSManagerService$ASKSState;

    .line 2699
    .local v4, "state":Lcom/android/server/asks/ASKSManagerService$ASKSState;
    invoke-virtual {v4}, Lcom/android/server/asks/ASKSManagerService$ASKSState;->getRestrict()Lcom/android/server/asks/ASKSManagerService$Restrict;

    move-result-object v5

    if-eqz v5, :cond_43

    .line 2701
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4}, Lcom/android/server/asks/ASKSManagerService$ASKSState;->getRestrict()Lcom/android/server/asks/ASKSManagerService$Restrict;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/asks/ASKSManagerService$Restrict;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_55

    .line 2702
    :cond_43
    invoke-virtual {v4}, Lcom/android/server/asks/ASKSManagerService$ASKSState;->getEMMode()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_55

    .line 2703
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "DENY"

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2705
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/asks/ASKSManagerService$ASKSState;>;"
    .end local v4    # "state":Lcom/android/server/asks/ASKSManagerService$ASKSState;
    :cond_55
    :goto_55
    goto :goto_15

    .line 2707
    :cond_56
    invoke-static {v0}, Landroid/content/pm/ASKSManager;->updateRestrictedTargetPackages(Ljava/util/HashMap;)V

    .line 2708
    return-void
.end method

.method private updateTrustedFile()V
    .registers 17

    .line 3215
    const-string v0, "AASA_ASKSManager_SECURETIME"

    const-string/jumbo v1, "updateTrustedFile : "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3216
    invoke-direct/range {p0 .. p0}, Lcom/android/server/asks/ASKSManagerService;->hasTrustedTime()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 3217
    invoke-direct/range {p0 .. p0}, Lcom/android/server/asks/ASKSManagerService;->getTrustedFile()[Ljava/lang/String;

    move-result-object v0

    .line 3219
    .local v0, "lists":[Ljava/lang/String;
    if-eqz v0, :cond_3d

    array-length v1, v0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3d

    .line 3220
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 3222
    .local v1, "grade":I
    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 3223
    .local v8, "trustedCurrent":J
    const/4 v2, 0x2

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 3224
    .local v10, "elapsedtime":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    .line 3226
    .local v12, "current_elapsed":J
    sub-long v2, v8, v10

    add-long v14, v2, v12

    .line 3228
    .local v14, "trustedToday":J
    move-object/from16 v2, p0

    move v3, v1

    move-wide v4, v14

    move-wide v6, v12

    invoke-direct/range {v2 .. v7}, Lcom/android/server/asks/ASKSManagerService;->setTrustedFile(IJJ)V

    .line 3231
    .end local v0    # "lists":[Ljava/lang/String;
    .end local v1    # "grade":I
    .end local v8    # "trustedCurrent":J
    .end local v10    # "elapsedtime":J
    .end local v12    # "current_elapsed":J
    .end local v14    # "trustedToday":J
    :cond_3d
    return-void
.end method

.method private verifyToken(Lcom/android/server/asks/ASKSManagerService$ASKSSession;Ljava/lang/String;Ljava/lang/String;ZII)I
    .registers 59
    .param p1, "session"    # Lcom/android/server/asks/ASKSManagerService$ASKSSession;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "installerPkgName"    # Ljava/lang/String;
    .param p4, "allowInstall"    # Z
    .param p5, "caseNo"    # I
    .param p6, "keyIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1463
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p5

    move/from16 v5, p6

    const-string v6, "BEFORE"

    const-string v7, "RUFS"

    const-string v8, "EMMODE"

    const-string v9, "EXPIRED"

    const-string v10, "CARRIERS"

    const-string v11, "MODELS"

    const-string v12, " "

    const-string v13, "RESTRICT"

    const-string v14, "AASA_ASKSManager"

    const-string v15, " AASA_VerifyToken START"

    invoke-static {v14, v15}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1466
    const/4 v15, 0x0

    .line 1469
    .local v15, "mIsBlockDeploy":Z
    const/16 v16, 0x0

    .line 1470
    .local v16, "mTokenContents":[B
    move/from16 v17, v15

    .end local v15    # "mIsBlockDeploy":Z
    .local v17, "mIsBlockDeploy":Z
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->getCodePath()Ljava/lang/String;

    move-result-object v15

    .line 1472
    .local v15, "mArchiveSourcePath":Ljava/lang/String;
    const/16 v18, 0x0

    .line 1473
    .local v18, "mTokenFile":Landroid/util/jar/StrictJarFile;
    const/16 v19, 0x0

    .line 1477
    .local v19, "mTokenEntry":Ljava/util/zip/ZipEntry;
    move-object/from16 v20, v12

    :try_start_30
    new-instance v12, Landroid/util/jar/StrictJarFile;
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_32} :catch_ea
    .catch Ljava/lang/SecurityException; {:try_start_30 .. :try_end_32} :catch_ca
    .catchall {:try_start_30 .. :try_end_32} :catchall_c1

    move-object/from16 v21, v6

    move-object/from16 v22, v7

    const/4 v6, 0x0

    const/4 v7, 0x1

    :try_start_38
    invoke-direct {v12, v15, v6, v7}, Landroid/util/jar/StrictJarFile;-><init>(Ljava/lang/String;ZZ)V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3b} :catch_bc
    .catch Ljava/lang/SecurityException; {:try_start_38 .. :try_end_3b} :catch_b7
    .catchall {:try_start_38 .. :try_end_3b} :catchall_c1

    move-object v6, v12

    .line 1478
    .end local v18    # "mTokenFile":Landroid/util/jar/StrictJarFile;
    .local v6, "mTokenFile":Landroid/util/jar/StrictJarFile;
    if-nez p4, :cond_65

    :try_start_3e
    const-string v7, "/data/"

    invoke-virtual {v15, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_44} :catch_5d
    .catch Ljava/lang/SecurityException; {:try_start_3e .. :try_end_44} :catch_55
    .catchall {:try_start_3e .. :try_end_44} :catchall_4a

    if-eqz v7, :cond_65

    .line 1479
    const/4 v7, 0x1

    move/from16 v17, v7

    .end local v17    # "mIsBlockDeploy":Z
    .local v7, "mIsBlockDeploy":Z
    goto :goto_65

    .line 1504
    .end local v7    # "mIsBlockDeploy":Z
    .restart local v17    # "mIsBlockDeploy":Z
    :catchall_4a
    move-exception v0

    move-object v1, v0

    move-object v10, v2

    move-object/from16 v18, v6

    move-object/from16 v31, v15

    move/from16 v15, v17

    goto/16 :goto_a03

    .line 1498
    :catch_55
    move-exception v0

    move-object/from16 v18, v6

    move-object/from16 v23, v13

    move-object v6, v0

    goto/16 :goto_d2

    .line 1494
    :catch_5d
    move-exception v0

    move-object/from16 v18, v6

    move-object/from16 v23, v13

    move-object v6, v0

    goto/16 :goto_f2

    .line 1481
    :cond_65
    :goto_65
    nop

    .line 1483
    :try_start_66
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->getTokenName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/util/jar/StrictJarFile;->findEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v7
    :try_end_6e
    .catch Ljava/io/IOException; {:try_start_66 .. :try_end_6e} :catch_b0
    .catch Ljava/lang/SecurityException; {:try_start_66 .. :try_end_6e} :catch_a9
    .catchall {:try_start_66 .. :try_end_6e} :catchall_4a

    .line 1484
    .end local v19    # "mTokenEntry":Ljava/util/zip/ZipEntry;
    .local v7, "mTokenEntry":Ljava/util/zip/ZipEntry;
    if-eqz v7, :cond_9f

    .line 1486
    move-object/from16 v23, v13

    :try_start_72
    invoke-virtual {v7}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v12

    long-to-int v12, v12

    new-array v12, v12, [B

    .line 1487
    .local v12, "signedData":[B
    invoke-direct {v1, v6, v7, v12}, Lcom/android/server/asks/ASKSManagerService;->loadCertificates(Landroid/util/jar/StrictJarFile;Ljava/util/zip/ZipEntry;[B)[Ljava/security/cert/Certificate;

    .line 1489
    invoke-direct {v1, v2, v4, v12}, Lcom/android/server/asks/ASKSManagerService;->checkIntegrityNew(Lcom/android/server/asks/ASKSManagerService$ASKSSession;I[B)[B

    move-result-object v13
    :try_end_80
    .catch Ljava/io/IOException; {:try_start_72 .. :try_end_80} :catch_97
    .catch Ljava/lang/SecurityException; {:try_start_72 .. :try_end_80} :catch_90
    .catchall {:try_start_72 .. :try_end_80} :catchall_83

    move-object/from16 v16, v13

    .end local v16    # "mTokenContents":[B
    .local v13, "mTokenContents":[B
    goto :goto_a1

    .line 1504
    .end local v12    # "signedData":[B
    .end local v13    # "mTokenContents":[B
    .restart local v16    # "mTokenContents":[B
    :catchall_83
    move-exception v0

    move-object v1, v0

    move-object v10, v2

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    move-object/from16 v31, v15

    move/from16 v15, v17

    goto/16 :goto_a03

    .line 1498
    :catch_90
    move-exception v0

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    move-object v6, v0

    goto :goto_d2

    .line 1494
    :catch_97
    move-exception v0

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    move-object v6, v0

    goto/16 :goto_f2

    .line 1484
    :cond_9f
    move-object/from16 v23, v13

    .line 1504
    :goto_a1
    nop

    .line 1505
    invoke-virtual {v6}, Landroid/util/jar/StrictJarFile;->close()V

    .line 1510
    move-object/from16 v12, v16

    goto/16 :goto_112

    .line 1498
    .end local v7    # "mTokenEntry":Ljava/util/zip/ZipEntry;
    .restart local v19    # "mTokenEntry":Ljava/util/zip/ZipEntry;
    :catch_a9
    move-exception v0

    move-object/from16 v23, v13

    move-object/from16 v18, v6

    move-object v6, v0

    goto :goto_d2

    .line 1494
    :catch_b0
    move-exception v0

    move-object/from16 v23, v13

    move-object/from16 v18, v6

    move-object v6, v0

    goto :goto_f2

    .line 1498
    .end local v6    # "mTokenFile":Landroid/util/jar/StrictJarFile;
    .restart local v18    # "mTokenFile":Landroid/util/jar/StrictJarFile;
    :catch_b7
    move-exception v0

    move-object/from16 v23, v13

    move-object v6, v0

    goto :goto_d2

    .line 1494
    :catch_bc
    move-exception v0

    move-object/from16 v23, v13

    move-object v6, v0

    goto :goto_f2

    .line 1504
    :catchall_c1
    move-exception v0

    move-object v1, v0

    move-object v10, v2

    move-object/from16 v31, v15

    move/from16 v15, v17

    goto/16 :goto_a03

    .line 1498
    :catch_ca
    move-exception v0

    move-object/from16 v21, v6

    move-object/from16 v22, v7

    move-object/from16 v23, v13

    move-object v6, v0

    .line 1500
    .local v6, "e":Ljava/lang/SecurityException;
    :goto_d2
    :try_start_d2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " ERROR: AASA_VerifyToken "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v14, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e6
    .catchall {:try_start_d2 .. :try_end_e6} :catchall_c1

    .line 1504
    nop

    .end local v6    # "e":Ljava/lang/SecurityException;
    if-eqz v18, :cond_10c

    .line 1505
    goto :goto_109

    .line 1494
    :catch_ea
    move-exception v0

    move-object/from16 v21, v6

    move-object/from16 v22, v7

    move-object/from16 v23, v13

    move-object v6, v0

    .line 1496
    .local v6, "m":Ljava/io/IOException;
    :goto_f2
    :try_start_f2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " ERROR: AASA_VerifyToken "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v14, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_106
    .catchall {:try_start_f2 .. :try_end_106} :catchall_9fc

    .line 1504
    nop

    .end local v6    # "m":Ljava/io/IOException;
    if-eqz v18, :cond_10c

    .line 1505
    :goto_109
    invoke-virtual/range {v18 .. v18}, Landroid/util/jar/StrictJarFile;->close()V

    .line 1510
    :cond_10c
    move-object/from16 v12, v16

    move-object/from16 v6, v18

    move-object/from16 v7, v19

    .end local v16    # "mTokenContents":[B
    .end local v18    # "mTokenFile":Landroid/util/jar/StrictJarFile;
    .end local v19    # "mTokenEntry":Ljava/util/zip/ZipEntry;
    .local v6, "mTokenFile":Landroid/util/jar/StrictJarFile;
    .restart local v7    # "mTokenEntry":Ljava/util/zip/ZipEntry;
    .local v12, "mTokenContents":[B
    :goto_112
    if-nez v12, :cond_11c

    .line 1512
    const-string v8, " ERROR: plz check certification in the device - Fail to check integrity"

    invoke-static {v14, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1513
    const/16 v8, 0x16

    return v8

    .line 1514
    :cond_11c
    array-length v13, v12

    move-object/from16 v16, v6

    const/4 v6, 0x1

    .end local v6    # "mTokenFile":Landroid/util/jar/StrictJarFile;
    .local v16, "mTokenFile":Landroid/util/jar/StrictJarFile;
    if-eq v13, v6, :cond_9e1

    array-length v6, v12

    const/4 v13, 0x2

    if-ne v6, v13, :cond_12e

    move-object v10, v2

    move-object/from16 v35, v12

    move-object v3, v14

    move-object/from16 v31, v15

    goto/16 :goto_9e7

    .line 1526
    :cond_12e
    const/4 v6, 0x0

    .line 1527
    .end local v16    # "mTokenFile":Landroid/util/jar/StrictJarFile;
    .restart local v6    # "mTokenFile":Landroid/util/jar/StrictJarFile;
    const/4 v7, 0x0

    .line 1531
    const/16 v16, 0x15

    :try_start_132
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v18

    .line 1532
    .local v18, "pullParserFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual/range {v18 .. v18}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v19

    move-object/from16 v24, v19

    .line 1533
    .local v24, "parser":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v13, Ljava/io/ByteArrayInputStream;

    invoke-direct {v13, v12}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_141
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_132 .. :try_end_141} :catch_9bc

    move-object/from16 v25, v6

    .end local v6    # "mTokenFile":Landroid/util/jar/StrictJarFile;
    .local v25, "mTokenFile":Landroid/util/jar/StrictJarFile;
    const/4 v6, 0x0

    move-object/from16 v26, v7

    move-object/from16 v7, v24

    .end local v24    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .local v7, "parser":Lorg/xmlpull/v1/XmlPullParser;
    .local v26, "mTokenEntry":Ljava/util/zip/ZipEntry;
    :try_start_148
    invoke-interface {v7, v13, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_14b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_148 .. :try_end_14b} :catch_9b1

    .line 1537
    :try_start_14b
    const-string v13, "MODE"

    invoke-direct {v1, v7, v13}, Lcom/android/server/asks/ASKSManagerService;->parseXMLNew(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1539
    .local v13, "mode":Ljava/lang/String;
    invoke-direct {v1, v13}, Lcom/android/server/asks/ASKSManagerService;->isInteger(Ljava/lang/String;)Z

    move-result v24

    if-nez v24, :cond_158

    .line 1542
    return v16

    .line 1544
    :cond_158
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v24

    move/from16 v27, v24

    .line 1546
    .local v27, "which":I
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V
    :try_end_163
    .catch Ljava/io/IOException; {:try_start_14b .. :try_end_163} :catch_986
    .catch Ljava/lang/NumberFormatException; {:try_start_14b .. :try_end_163} :catch_95e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_14b .. :try_end_163} :catch_9b1

    move-object/from16 v28, v24

    .line 1547
    .local v28, "checkList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v6, "CROSSDOWN"

    move-object/from16 v29, v7

    .end local v7    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .local v29, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const-string v7, "PACKAGE"

    move-object/from16 v30, v13

    .end local v13    # "mode":Ljava/lang/String;
    .local v30, "mode":Ljava/lang/String;
    const-string v13, "DIGEST"

    move-object/from16 v31, v15

    .end local v15    # "mArchiveSourcePath":Ljava/lang/String;
    .local v31, "mArchiveSourcePath":Ljava/lang/String;
    const-string v15, "CREATE"

    move-object/from16 v32, v8

    move/from16 v8, v27

    .end local v27    # "which":I
    .local v8, "which":I
    if-eqz v8, :cond_21a

    move-object/from16 v27, v9

    const/4 v9, 0x1

    if-eq v8, v9, :cond_1c0

    const/4 v9, 0x3

    if-eq v8, v9, :cond_182

    .line 1583
    return v16

    .line 1574
    :cond_182
    const/4 v9, 0x1

    if-ne v4, v9, :cond_1ba

    .line 1575
    :try_start_185
    const-string v33, "PACKAGE"

    const-string v34, "DIGEST"

    const-string v35, "CREATE"

    const-string v36, "MODELS"

    const-string v37, "CARRIERS"

    const-string v38, "EXPIRED"

    const-string v39, "RESTRICT"

    const-string v40, "DATELIMIT"

    const-string v41, "CROSSDOWN"

    const-string v42, "RUFS"

    const-string v43, "BEFORE"

    const-string v44, "AFTER"

    const-string v45, "CHECK"

    const-string v46, "EMMODE"

    const-string v47, "ADPMODELS"

    const-string v48, "ADPCARRIERS"

    const-string v49, "ASKSRNEWMODELS"

    const-string v50, "ASKSRNEWCARRIERS"

    filled-new-array/range {v33 .. v50}, [Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    move/from16 v33, v8

    move-object/from16 v8, v28

    .end local v28    # "checkList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v8, "checkList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v33, "which":I
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_279

    .line 1574
    .end local v33    # "which":I
    .local v8, "which":I
    .restart local v28    # "checkList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1ba
    move/from16 v33, v8

    move-object/from16 v8, v28

    .end local v28    # "checkList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v8, "checkList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v33    # "which":I
    goto/16 :goto_279

    .line 1564
    .end local v33    # "which":I
    .local v8, "which":I
    .restart local v28    # "checkList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1c0
    move/from16 v33, v8

    move-object/from16 v8, v28

    .end local v28    # "checkList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v8, "checkList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v33    # "which":I
    const/4 v9, 0x1

    if-ne v4, v9, :cond_279

    .line 1565
    const-string v34, "PACKAGE"

    const-string v35, "DIGEST"

    const-string v36, "CREATE"

    const-string v37, "MODELS"

    const-string v38, "CARRIERS"

    const-string v39, "EXPIRED"

    const-string v40, "RESTRICT"

    const-string v41, "DATELIMIT"

    const-string v42, "CROSSDOWN"

    const-string v43, "RUFS"

    const-string v44, "BEFORE"

    const-string v45, "AFTER"

    const-string v46, "CHECK"

    const-string v47, "EMMODE"

    const-string v48, "ADPMODELS"

    const-string v49, "ADPCARRIERS"

    const-string v50, "ASKSRNEWMODELS"

    const-string v51, "ASKSRNEWCARRIERS"

    filled-new-array/range {v34 .. v51}, [Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_279

    .line 1929
    .end local v8    # "checkList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v18    # "pullParserFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v29    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v30    # "mode":Ljava/lang/String;
    .end local v33    # "which":I
    :catch_1f8
    move-exception v0

    move-object v1, v0

    move-object v10, v2

    move-object/from16 v35, v12

    move-object v3, v14

    move-object/from16 v6, v20

    goto/16 :goto_9ca

    .line 1921
    .restart local v18    # "pullParserFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v29    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_202
    move-exception v0

    move-object v1, v0

    move-object v10, v2

    :goto_205
    move-object/from16 v35, v12

    move-object v3, v14

    move-object/from16 v6, v20

    move-object/from16 v24, v29

    goto/16 :goto_96c

    .line 1916
    :catch_20e
    move-exception v0

    move-object v1, v0

    move-object v10, v2

    :goto_211
    move-object/from16 v35, v12

    move-object v3, v14

    move-object/from16 v6, v20

    move-object/from16 v24, v29

    goto/16 :goto_994

    .line 1550
    .local v8, "which":I
    .restart local v28    # "checkList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v30    # "mode":Ljava/lang/String;
    :cond_21a
    move/from16 v33, v8

    move-object/from16 v27, v9

    move-object/from16 v8, v28

    .end local v28    # "checkList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v8, "checkList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v33    # "which":I
    const/4 v9, 0x1

    if-ne v4, v9, :cond_279

    .line 1551
    if-eqz v17, :cond_244

    .line 1552
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Violate security policy of MSTG. Package("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ") is blocked. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v14, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1553
    invoke-direct {v1, v3}, Lcom/android/server/asks/ASKSManagerService;->writeBlockApkList(Ljava/lang/String;)V
    :try_end_241
    .catch Ljava/io/IOException; {:try_start_185 .. :try_end_241} :catch_20e
    .catch Ljava/lang/NumberFormatException; {:try_start_185 .. :try_end_241} :catch_202
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_185 .. :try_end_241} :catch_1f8

    .line 1555
    const/16 v6, 0xf

    return v6

    .line 1557
    :cond_244
    :try_start_244
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Token 0:"

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v14, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1558
    filled-new-array {v7, v15, v13, v6}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_263
    .catch Ljava/io/IOException; {:try_start_244 .. :try_end_263} :catch_274
    .catch Ljava/lang/NumberFormatException; {:try_start_244 .. :try_end_263} :catch_26f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_244 .. :try_end_263} :catch_264

    goto :goto_279

    .line 1929
    .end local v8    # "checkList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v18    # "pullParserFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v29    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v30    # "mode":Ljava/lang/String;
    .end local v33    # "which":I
    :catch_264
    move-exception v0

    move-object/from16 v10, p1

    move-object v1, v0

    move-object/from16 v35, v12

    move-object v3, v14

    move-object/from16 v6, v20

    goto/16 :goto_9ca

    .line 1921
    .restart local v18    # "pullParserFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v29    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_26f
    move-exception v0

    move-object/from16 v10, p1

    move-object v1, v0

    goto :goto_205

    .line 1916
    :catch_274
    move-exception v0

    move-object/from16 v10, p1

    move-object v1, v0

    goto :goto_211

    .line 1587
    .restart local v8    # "checkList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v30    # "mode":Ljava/lang/String;
    .restart local v33    # "which":I
    :cond_279
    :goto_279
    :try_start_279
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1588
    .local v2, "verifyList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_282
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v28
    :try_end_286
    .catch Ljava/io/IOException; {:try_start_279 .. :try_end_286} :catch_952
    .catch Ljava/lang/NumberFormatException; {:try_start_279 .. :try_end_286} :catch_946
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_279 .. :try_end_286} :catch_93b

    move-object/from16 v34, v8

    .end local v8    # "checkList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v34, "checkList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v8, "NONE"

    if-eqz v28, :cond_2a0

    :try_start_28c
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/String;

    move-object/from16 v35, v28

    .line 1589
    .local v35, "tag":Ljava/lang/String;
    move-object/from16 v28, v9

    move-object/from16 v9, v35

    .end local v35    # "tag":Ljava/lang/String;
    .local v9, "tag":Ljava/lang/String;
    invoke-virtual {v2, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_29b
    .catch Ljava/io/IOException; {:try_start_28c .. :try_end_29b} :catch_274
    .catch Ljava/lang/NumberFormatException; {:try_start_28c .. :try_end_29b} :catch_26f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_28c .. :try_end_29b} :catch_264

    .line 1590
    move-object/from16 v9, v28

    move-object/from16 v8, v34

    .end local v9    # "tag":Ljava/lang/String;
    goto :goto_282

    .line 1591
    :cond_2a0
    :try_start_2a0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v9

    move-object/from16 v18, v9

    .line 1592
    invoke-virtual/range {v18 .. v18}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v9
    :try_end_2aa
    .catch Ljava/io/IOException; {:try_start_2a0 .. :try_end_2aa} :catch_952
    .catch Ljava/lang/NumberFormatException; {:try_start_2a0 .. :try_end_2aa} :catch_946
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2a0 .. :try_end_2aa} :catch_93b

    .line 1593
    .end local v29    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .local v9, "parser":Lorg/xmlpull/v1/XmlPullParser;
    move-object/from16 v28, v15

    :try_start_2ac
    new-instance v15, Ljava/io/ByteArrayInputStream;

    invoke-direct {v15, v12}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_2b1
    .catch Ljava/io/IOException; {:try_start_2ac .. :try_end_2b1} :catch_92c
    .catch Ljava/lang/NumberFormatException; {:try_start_2ac .. :try_end_2b1} :catch_91e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2ac .. :try_end_2b1} :catch_93b

    move-object/from16 v35, v12

    const/4 v12, 0x0

    .end local v12    # "mTokenContents":[B
    .local v35, "mTokenContents":[B
    :try_start_2b4
    invoke-interface {v9, v15, v12}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1595
    invoke-direct {v1, v9, v2}, Lcom/android/server/asks/ASKSManagerService;->parseXMLNew(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/HashMap;)V
    :try_end_2ba
    .catch Ljava/io/IOException; {:try_start_2b4 .. :try_end_2ba} :catch_911
    .catch Ljava/lang/NumberFormatException; {:try_start_2b4 .. :try_end_2ba} :catch_904
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2b4 .. :try_end_2ba} :catch_8fc

    .line 1597
    const/4 v12, 0x0

    .line 1598
    .local v12, "success_check_count":I
    const/4 v15, 0x0

    .line 1600
    .local v15, "isModelChecked":Z
    const/16 v29, 0x0

    .line 1601
    .local v29, "isValidDate":Z
    const/16 v36, 0x0

    .line 1602
    .local v36, "createDate":Ljava/lang/String;
    const/16 v37, 0x0

    .line 1603
    .local v37, "expiredDate":Ljava/lang/String;
    const/16 v38, 0x0

    .line 1605
    .local v38, "keyValue":Ljava/lang/String;
    const/16 v39, 0x0

    .line 1606
    .local v39, "mymodel":Ljava/lang/String;
    move-object/from16 v40, v9

    .end local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .local v40, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v9, 0x0

    .line 1608
    .local v9, "mycarrier":Ljava/lang/String;
    :try_start_2c9
    invoke-direct/range {p0 .. p0}, Lcom/android/server/asks/ASKSManagerService;->getTrustedToday()Ljava/lang/String;

    move-result-object v41

    .line 1611
    .local v41, "trustedToday":Ljava/lang/String;
    invoke-virtual {v2, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v42
    :try_end_2d1
    .catch Ljava/io/IOException; {:try_start_2c9 .. :try_end_2d1} :catch_8f1
    .catch Ljava/lang/NumberFormatException; {:try_start_2c9 .. :try_end_2d1} :catch_8e6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2c9 .. :try_end_2d1} :catch_8fc

    if-eqz v42, :cond_31f

    move-object/from16 v42, v10

    :try_start_2d5
    invoke-virtual {v2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_321

    .line 1613
    invoke-virtual {v2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v10, 0x1

    if-ne v7, v10, :cond_301

    .line 1615
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "OK:"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v14, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_300
    .catch Ljava/io/IOException; {:try_start_2d5 .. :try_end_300} :catch_316
    .catch Ljava/lang/NumberFormatException; {:try_start_2d5 .. :try_end_300} :catch_30d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2d5 .. :try_end_300} :catch_304

    goto :goto_323

    .line 1617
    :cond_301
    add-int/lit8 v12, v12, -0x1

    goto :goto_323

    .line 1929
    .end local v2    # "verifyList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v9    # "mycarrier":Ljava/lang/String;
    .end local v12    # "success_check_count":I
    .end local v15    # "isModelChecked":Z
    .end local v18    # "pullParserFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v29    # "isValidDate":Z
    .end local v30    # "mode":Ljava/lang/String;
    .end local v33    # "which":I
    .end local v34    # "checkList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v36    # "createDate":Ljava/lang/String;
    .end local v37    # "expiredDate":Ljava/lang/String;
    .end local v38    # "keyValue":Ljava/lang/String;
    .end local v39    # "mymodel":Ljava/lang/String;
    .end local v40    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v41    # "trustedToday":Ljava/lang/String;
    :catch_304
    move-exception v0

    move-object/from16 v10, p1

    move-object v1, v0

    move-object v3, v14

    move-object/from16 v6, v20

    goto/16 :goto_9ca

    .line 1921
    .restart local v18    # "pullParserFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v40    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_30d
    move-exception v0

    move-object/from16 v10, p1

    :goto_310
    move-object v1, v0

    move-object v3, v14

    move-object/from16 v6, v20

    goto/16 :goto_8ed

    .line 1916
    :catch_316
    move-exception v0

    move-object/from16 v10, p1

    :goto_319
    move-object v1, v0

    move-object v3, v14

    move-object/from16 v6, v20

    goto/16 :goto_8f8

    .line 1611
    .restart local v2    # "verifyList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v9    # "mycarrier":Ljava/lang/String;
    .restart local v12    # "success_check_count":I
    .restart local v15    # "isModelChecked":Z
    .restart local v29    # "isValidDate":Z
    .restart local v30    # "mode":Ljava/lang/String;
    .restart local v33    # "which":I
    .restart local v34    # "checkList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v36    # "createDate":Ljava/lang/String;
    .restart local v37    # "expiredDate":Ljava/lang/String;
    .restart local v38    # "keyValue":Ljava/lang/String;
    .restart local v39    # "mymodel":Ljava/lang/String;
    .restart local v41    # "trustedToday":Ljava/lang/String;
    :cond_31f
    move-object/from16 v42, v10

    .line 1620
    :cond_321
    add-int/lit8 v12, v12, -0x1

    .line 1623
    :goto_323
    :try_start_323
    invoke-virtual {v2, v13}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7
    :try_end_327
    .catch Ljava/io/IOException; {:try_start_323 .. :try_end_327} :catch_8f1
    .catch Ljava/lang/NumberFormatException; {:try_start_323 .. :try_end_327} :catch_8e6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_323 .. :try_end_327} :catch_8fc

    if-eqz v7, :cond_371

    :try_start_329
    invoke-virtual {v2, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_371

    .line 1626
    const/4 v7, 0x1

    if-ne v4, v7, :cond_376

    .line 1627
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->getPkgDigest()Ljava/lang/String;

    move-result-object v7

    .line 1628
    .local v7, "checkHash":Ljava/lang/String;
    if-eqz v7, :cond_34c

    invoke-virtual {v2, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_34c

    .line 1630
    const-string v10, "OK:HASH"

    invoke-static {v14, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_370

    .line 1632
    :cond_34c
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NOT OK:HASH : "

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " comp : "

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v14, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_36e
    .catch Ljava/io/IOException; {:try_start_329 .. :try_end_36e} :catch_316
    .catch Ljava/lang/NumberFormatException; {:try_start_329 .. :try_end_36e} :catch_30d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_329 .. :try_end_36e} :catch_304

    .line 1633
    add-int/lit8 v12, v12, -0x1

    .line 1635
    .end local v7    # "checkHash":Ljava/lang/String;
    :goto_370
    goto :goto_376

    .line 1637
    :cond_371
    const/4 v3, 0x1

    if-ne v4, v3, :cond_376

    .line 1638
    add-int/lit8 v12, v12, -0x1

    .line 1641
    :cond_376
    :goto_376
    :try_start_376
    invoke-virtual {v2, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3
    :try_end_37a
    .catch Ljava/io/IOException; {:try_start_376 .. :try_end_37a} :catch_8f1
    .catch Ljava/lang/NumberFormatException; {:try_start_376 .. :try_end_37a} :catch_8e6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_376 .. :try_end_37a} :catch_8fc

    if-eqz v3, :cond_3d5

    :try_start_37c
    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3d5

    .line 1643
    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1644
    .local v3, "crossType":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 1645
    .local v6, "crossTypeInt":I
    if-gez v6, :cond_395

    .line 1646
    add-int/lit8 v12, v12, -0x1

    goto :goto_3d4

    .line 1648
    :cond_395
    const-string/jumbo v7, "ro.build.2ndbrand"

    const-string v10, "false"

    invoke-static {v7, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1649
    .local v7, "isSecondBrand":Ljava/lang/String;
    if-nez v6, :cond_3a6

    .line 1650
    const-string v10, "OK:CROSSDOWN"

    invoke-static {v14, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3d4

    .line 1651
    :cond_3a6
    const-string/jumbo v10, "true"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3bb

    and-int/lit8 v10, v6, 0x2

    if-nez v10, :cond_3bb

    .line 1653
    const-string v8, "FAILED CROSSDOWN for sep lite"

    invoke-static {v14, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1654
    const/16 v8, 0x92

    return v8

    .line 1655
    :cond_3bb
    const-string v10, "false"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3cf

    and-int/lit8 v10, v6, 0x1

    if-nez v10, :cond_3cf

    .line 1657
    const-string v8, "FAILED CROSSDOWN for galaxy"

    invoke-static {v14, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1658
    const/16 v8, 0x9c

    return v8

    .line 1660
    :cond_3cf
    const-string v10, "OK:CROSSDOWN"

    invoke-static {v14, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1664
    .end local v3    # "crossType":Ljava/lang/String;
    .end local v6    # "crossTypeInt":I
    .end local v7    # "isSecondBrand":Ljava/lang/String;
    :goto_3d4
    goto :goto_3f9

    .line 1665
    :cond_3d5
    const/4 v3, 0x1

    if-ne v4, v3, :cond_3f9

    .line 1666
    const-string/jumbo v3, "true"

    const-string/jumbo v6, "ro.build.2ndbrand"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3f9

    .line 1668
    const/4 v3, 0x1

    if-eq v5, v3, :cond_3f9

    const/4 v3, 0x2

    if-eq v5, v3, :cond_3f9

    const/4 v3, 0x4

    if-ne v5, v3, :cond_3f2

    goto :goto_3f9

    .line 1672
    :cond_3f2
    const-string v3, "Error : No value CROSSDOWN in 2ndbrand."

    invoke-static {v14, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3f7
    .catch Ljava/io/IOException; {:try_start_37c .. :try_end_3f7} :catch_316
    .catch Ljava/lang/NumberFormatException; {:try_start_37c .. :try_end_3f7} :catch_30d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_37c .. :try_end_3f7} :catch_304

    .line 1673
    add-int/lit8 v12, v12, -0x1

    .line 1679
    :cond_3f9
    :goto_3f9
    :try_start_3f9
    invoke-virtual {v2, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3
    :try_end_3fd
    .catch Ljava/io/IOException; {:try_start_3f9 .. :try_end_3fd} :catch_8f1
    .catch Ljava/lang/NumberFormatException; {:try_start_3f9 .. :try_end_3fd} :catch_8e6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3f9 .. :try_end_3fd} :catch_8fc

    if-eqz v3, :cond_429

    :try_start_3ff
    invoke-virtual {v2, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_429

    .line 1681
    if-nez v15, :cond_415

    .line 1683
    const/4 v15, 0x1

    .line 1684
    invoke-virtual {v2, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v39, v3

    goto :goto_42b

    .line 1687
    :cond_415
    invoke-virtual {v2, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1688
    .end local v39    # "mymodel":Ljava/lang/String;
    .local v3, "mymodel":Ljava/lang/String;
    invoke-direct {v1, v3, v9}, Lcom/android/server/asks/ASKSManagerService;->checkTokenTarget(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_42b

    .line 1690
    const-string v6, "Error : MODEL"

    invoke-static {v14, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_426
    .catch Ljava/io/IOException; {:try_start_3ff .. :try_end_426} :catch_316
    .catch Ljava/lang/NumberFormatException; {:try_start_3ff .. :try_end_426} :catch_30d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3ff .. :try_end_426} :catch_304

    .line 1691
    add-int/lit8 v12, v12, -0x1

    goto :goto_42b

    .line 1697
    .end local v3    # "mymodel":Ljava/lang/String;
    .restart local v39    # "mymodel":Ljava/lang/String;
    :cond_429
    move-object/from16 v3, v39

    .end local v39    # "mymodel":Ljava/lang/String;
    .restart local v3    # "mymodel":Ljava/lang/String;
    :cond_42b
    :goto_42b
    move-object/from16 v6, v42

    :try_start_42d
    invoke-virtual {v2, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7
    :try_end_431
    .catch Ljava/io/IOException; {:try_start_42d .. :try_end_431} :catch_8f1
    .catch Ljava/lang/NumberFormatException; {:try_start_42d .. :try_end_431} :catch_8e6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_42d .. :try_end_431} :catch_8fc

    if-eqz v7, :cond_45d

    :try_start_433
    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_45d

    .line 1699
    const/4 v7, 0x1

    if-ne v15, v7, :cond_455

    .line 1700
    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object v9, v6

    .line 1701
    invoke-direct {v1, v3, v9}, Lcom/android/server/asks/ASKSManagerService;->checkTokenTarget(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_45d

    .line 1703
    const-string v6, "Error : CARRIERS"

    invoke-static {v14, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1704
    add-int/lit8 v12, v12, -0x1

    goto :goto_45d

    .line 1709
    :cond_455
    const/4 v15, 0x1

    .line 1710
    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;
    :try_end_45c
    .catch Ljava/io/IOException; {:try_start_433 .. :try_end_45c} :catch_316
    .catch Ljava/lang/NumberFormatException; {:try_start_433 .. :try_end_45c} :catch_30d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_433 .. :try_end_45c} :catch_304

    move-object v9, v6

    .line 1715
    :cond_45d
    :goto_45d
    move-object/from16 v6, v28

    :try_start_45f
    invoke-virtual {v2, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7
    :try_end_463
    .catch Ljava/io/IOException; {:try_start_45f .. :try_end_463} :catch_8f1
    .catch Ljava/lang/NumberFormatException; {:try_start_45f .. :try_end_463} :catch_8e6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_45f .. :try_end_463} :catch_8fc

    if-eqz v7, :cond_4c3

    :try_start_465
    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4c3

    .line 1717
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "CREATE : "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v14, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_489
    .catch Ljava/io/IOException; {:try_start_465 .. :try_end_489} :catch_316
    .catch Ljava/lang/NumberFormatException; {:try_start_465 .. :try_end_489} :catch_30d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_465 .. :try_end_489} :catch_304

    .line 1720
    const/16 v29, 0x1

    .line 1721
    :try_start_48b
    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;
    :try_end_491
    .catch Ljava/lang/NumberFormatException; {:try_start_48b .. :try_end_491} :catch_4b9
    .catch Ljava/io/IOException; {:try_start_48b .. :try_end_491} :catch_316
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_48b .. :try_end_491} :catch_304

    .line 1722
    .end local v36    # "createDate":Ljava/lang/String;
    .local v6, "createDate":Ljava/lang/String;
    :try_start_491
    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    .line 1723
    .local v7, "today":Ljava/lang/Integer;
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    if-ge v10, v11, :cond_4a7

    .line 1724
    const-string v10, "createDate is bigger than today."

    invoke-static {v14, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1725
    invoke-direct {v1, v6}, Lcom/android/server/asks/ASKSManagerService;->setTrustTimeByToken(Ljava/lang/String;)V
    :try_end_4a7
    .catch Ljava/lang/NumberFormatException; {:try_start_491 .. :try_end_4a7} :catch_4b2
    .catch Ljava/io/IOException; {:try_start_491 .. :try_end_4a7} :catch_316
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_491 .. :try_end_4a7} :catch_304

    .line 1727
    :cond_4a7
    move-object/from16 v10, p1

    :try_start_4a9
    invoke-virtual {v10, v6}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->setVersion(Ljava/lang/String;)V
    :try_end_4ac
    .catch Ljava/lang/NumberFormatException; {:try_start_4a9 .. :try_end_4ac} :catch_4ad
    .catch Ljava/io/IOException; {:try_start_4a9 .. :try_end_4ac} :catch_4dc
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4a9 .. :try_end_4ac} :catch_4d2

    .line 1733
    .end local v7    # "today":Ljava/lang/Integer;
    goto :goto_4e1

    .line 1729
    :catch_4ad
    move-exception v0

    move-object/from16 v36, v6

    move-object v6, v0

    goto :goto_4bd

    :catch_4b2
    move-exception v0

    move-object/from16 v10, p1

    move-object/from16 v36, v6

    move-object v6, v0

    goto :goto_4bd

    .end local v6    # "createDate":Ljava/lang/String;
    .restart local v36    # "createDate":Ljava/lang/String;
    :catch_4b9
    move-exception v0

    move-object/from16 v10, p1

    move-object v6, v0

    .line 1730
    .local v6, "ne":Ljava/lang/NumberFormatException;
    :goto_4bd
    :try_start_4bd
    const-string v7, "Error : CREATE-NumberFormatException"

    invoke-static {v14, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1731
    return v16

    .line 1715
    .end local v6    # "ne":Ljava/lang/NumberFormatException;
    :cond_4c3
    move-object/from16 v10, p1

    .line 1736
    const/4 v6, 0x1

    if-ne v4, v6, :cond_4df

    .line 1737
    const-string v6, "Error : CREATE in asks case."

    invoke-static {v14, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4cd
    .catch Ljava/io/IOException; {:try_start_4bd .. :try_end_4cd} :catch_4dc
    .catch Ljava/lang/NumberFormatException; {:try_start_4bd .. :try_end_4cd} :catch_4d9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4bd .. :try_end_4cd} :catch_4d2

    .line 1738
    add-int/lit8 v12, v12, -0x1

    move-object/from16 v6, v36

    goto :goto_4e1

    .line 1929
    .end local v2    # "verifyList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "mymodel":Ljava/lang/String;
    .end local v9    # "mycarrier":Ljava/lang/String;
    .end local v12    # "success_check_count":I
    .end local v15    # "isModelChecked":Z
    .end local v18    # "pullParserFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v29    # "isValidDate":Z
    .end local v30    # "mode":Ljava/lang/String;
    .end local v33    # "which":I
    .end local v34    # "checkList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v36    # "createDate":Ljava/lang/String;
    .end local v37    # "expiredDate":Ljava/lang/String;
    .end local v38    # "keyValue":Ljava/lang/String;
    .end local v40    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v41    # "trustedToday":Ljava/lang/String;
    :catch_4d2
    move-exception v0

    move-object v1, v0

    move-object v3, v14

    move-object/from16 v6, v20

    goto/16 :goto_9ca

    .line 1921
    .restart local v18    # "pullParserFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v40    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_4d9
    move-exception v0

    goto/16 :goto_310

    .line 1916
    :catch_4dc
    move-exception v0

    goto/16 :goto_319

    .line 1736
    .restart local v2    # "verifyList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v3    # "mymodel":Ljava/lang/String;
    .restart local v9    # "mycarrier":Ljava/lang/String;
    .restart local v12    # "success_check_count":I
    .restart local v15    # "isModelChecked":Z
    .restart local v29    # "isValidDate":Z
    .restart local v30    # "mode":Ljava/lang/String;
    .restart local v33    # "which":I
    .restart local v34    # "checkList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v36    # "createDate":Ljava/lang/String;
    .restart local v37    # "expiredDate":Ljava/lang/String;
    .restart local v38    # "keyValue":Ljava/lang/String;
    .restart local v41    # "trustedToday":Ljava/lang/String;
    :cond_4df
    move-object/from16 v6, v36

    .line 1742
    .end local v36    # "createDate":Ljava/lang/String;
    .local v6, "createDate":Ljava/lang/String;
    :goto_4e1
    move-object/from16 v7, v27

    :try_start_4e3
    invoke-virtual {v2, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11
    :try_end_4e7
    .catch Ljava/io/IOException; {:try_start_4e3 .. :try_end_4e7} :catch_8e4
    .catch Ljava/lang/NumberFormatException; {:try_start_4e3 .. :try_end_4e7} :catch_8e2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4e3 .. :try_end_4e7} :catch_8e0

    if-eqz v11, :cond_547

    :try_start_4e9
    invoke-virtual {v2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_547

    .line 1744
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "EXPIRED : "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v14, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_50d
    .catch Ljava/io/IOException; {:try_start_4e9 .. :try_end_50d} :catch_4dc
    .catch Ljava/lang/NumberFormatException; {:try_start_4e9 .. :try_end_50d} :catch_4d9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4e9 .. :try_end_50d} :catch_4d2

    .line 1747
    :try_start_50d
    invoke-virtual {v2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    move-object/from16 v37, v7

    .line 1748
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    if-le v7, v11, :cond_527

    .line 1749
    const-string v7, "createDate is bigger than expiredDate."

    invoke-static {v14, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1751
    const/16 v7, 0xe

    return v7

    .line 1753
    :cond_527
    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    .line 1754
    .restart local v7    # "today":Ljava/lang/Integer;
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    if-le v11, v13, :cond_53e

    .line 1755
    const-string/jumbo v8, "today Date is bigger than expiredDate."

    invoke-static {v14, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_53b
    .catch Ljava/lang/NumberFormatException; {:try_start_50d .. :try_end_53b} :catch_53f
    .catch Ljava/io/IOException; {:try_start_50d .. :try_end_53b} :catch_4dc
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_50d .. :try_end_53b} :catch_4d2

    .line 1757
    const/16 v8, 0xe

    return v8

    .line 1764
    .end local v7    # "today":Ljava/lang/Integer;
    :cond_53e
    goto :goto_547

    .line 1760
    :catch_53f
    move-exception v0

    move-object v7, v0

    .line 1761
    .local v7, "ne":Ljava/lang/NumberFormatException;
    :try_start_541
    const-string v8, "EXPIRED : NumberFormatException"

    invoke-static {v14, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_546
    .catch Ljava/io/IOException; {:try_start_541 .. :try_end_546} :catch_4dc
    .catch Ljava/lang/NumberFormatException; {:try_start_541 .. :try_end_546} :catch_4d9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_541 .. :try_end_546} :catch_4d2

    .line 1763
    return v16

    .line 1767
    .end local v7    # "ne":Ljava/lang/NumberFormatException;
    :cond_547
    :goto_547
    move-object/from16 v7, v23

    :try_start_549
    invoke-virtual {v2, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11
    :try_end_54d
    .catch Ljava/io/IOException; {:try_start_549 .. :try_end_54d} :catch_8e4
    .catch Ljava/lang/NumberFormatException; {:try_start_549 .. :try_end_54d} :catch_8e2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_549 .. :try_end_54d} :catch_8e0

    if-eqz v11, :cond_672

    :try_start_54f
    invoke-virtual {v2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_672

    .line 1769
    const-string v11, "DELETE"

    invoke-virtual {v2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11
    :try_end_563
    .catch Ljava/io/IOException; {:try_start_54f .. :try_end_563} :catch_669
    .catch Ljava/lang/NumberFormatException; {:try_start_54f .. :try_end_563} :catch_660
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_54f .. :try_end_563} :catch_659

    const-string v13, "DATELIMIT"

    if-eqz v11, :cond_5bb

    .line 1771
    :try_start_567
    const-string v11, "AASA_ASKSManager_DELETABLE"

    move-object/from16 v19, v3

    .end local v3    # "mymodel":Ljava/lang/String;
    .local v19, "mymodel":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "type : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1773
    new-instance v3, Lcom/android/server/asks/ASKSManagerService$Deletable;

    invoke-direct {v3}, Lcom/android/server/asks/ASKSManagerService$Deletable;-><init>()V

    .line 1774
    .local v3, "d":Lcom/android/server/asks/ASKSManagerService$Deletable;
    invoke-virtual {v3, v6}, Lcom/android/server/asks/ASKSManagerService$Deletable;->setVersion(Ljava/lang/String;)V

    .line 1776
    invoke-virtual {v2, v13}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5ab

    invoke-virtual {v2, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5ab

    .line 1778
    invoke-virtual {v2, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/server/asks/ASKSManagerService$Deletable;->setDateLimit(Ljava/lang/String;)V

    .line 1779
    invoke-virtual {v10, v3}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->setDeletable(Lcom/android/server/asks/ASKSManagerService$Deletable;)V

    goto :goto_5b5

    .line 1782
    .end local v3    # "d":Lcom/android/server/asks/ASKSManagerService$Deletable;
    :cond_5ab
    const-string v3, "AASA_ASKSManager_DELETABLE"

    const-string v4, "FAIL: DATELIMIT in deletable"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5b2
    .catch Ljava/io/IOException; {:try_start_567 .. :try_end_5b2} :catch_4dc
    .catch Ljava/lang/NumberFormatException; {:try_start_567 .. :try_end_5b2} :catch_4d9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_567 .. :try_end_5b2} :catch_4d2

    .line 1783
    add-int/lit8 v12, v12, -0x1

    .line 1784
    nop

    .line 1786
    :goto_5b5
    move-object/from16 v13, v35

    move-object/from16 v24, v40

    goto/16 :goto_678

    .line 1789
    .end local v19    # "mymodel":Ljava/lang/String;
    .local v3, "mymodel":Ljava/lang/String;
    :cond_5bb
    move-object/from16 v19, v3

    .end local v3    # "mymodel":Ljava/lang/String;
    .restart local v19    # "mymodel":Ljava/lang/String;
    :try_start_5bd
    new-instance v3, Lcom/android/server/asks/ASKSManagerService$Restrict;

    invoke-direct {v3}, Lcom/android/server/asks/ASKSManagerService$Restrict;-><init>()V

    .line 1791
    .local v3, "restrict":Lcom/android/server/asks/ASKSManagerService$Restrict;
    invoke-virtual {v2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/server/asks/ASKSManagerService$Restrict;->setType(Ljava/lang/String;)V

    .line 1792
    invoke-virtual {v3, v6}, Lcom/android/server/asks/ASKSManagerService$Restrict;->setVersion(Ljava/lang/String;)V

    .line 1793
    const-string v4, "Token"

    invoke-virtual {v3, v4}, Lcom/android/server/asks/ASKSManagerService$Restrict;->setFrom(Ljava/lang/String;)V

    .line 1795
    invoke-virtual {v2, v13}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4
    :try_end_5d7
    .catch Ljava/io/IOException; {:try_start_5bd .. :try_end_5d7} :catch_669
    .catch Ljava/lang/NumberFormatException; {:try_start_5bd .. :try_end_5d7} :catch_660
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5bd .. :try_end_5d7} :catch_659

    if-eqz v4, :cond_5ed

    :try_start_5d9
    invoke-virtual {v2, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5ed

    .line 1796
    invoke-virtual {v2, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/server/asks/ASKSManagerService$Restrict;->setDateLimit(Ljava/lang/String;)V
    :try_end_5ec
    .catch Ljava/io/IOException; {:try_start_5d9 .. :try_end_5ec} :catch_4dc
    .catch Ljava/lang/NumberFormatException; {:try_start_5d9 .. :try_end_5ec} :catch_4d9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5d9 .. :try_end_5ec} :catch_4d2

    goto :goto_5f7

    .line 1798
    :cond_5ed
    :try_start_5ed
    const-string v4, "AASA_ASKSManager_RESTRICTED"

    const-string v7, "FAIL: DATELIMIT in restricted."

    invoke-static {v4, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1799
    add-int/lit8 v12, v12, -0x1

    .line 1800
    const/4 v3, 0x0

    .line 1804
    :goto_5f7
    if-eqz v3, :cond_651

    const-string v4, "REVOKE"

    invoke-virtual {v3}, Lcom/android/server/asks/ASKSManagerService$Restrict;->getType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_651

    .line 1806
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1808
    .local v4, "permissionList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v7

    move-object/from16 v18, v7

    .line 1809
    invoke-virtual/range {v18 .. v18}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v7
    :try_end_614
    .catch Ljava/io/IOException; {:try_start_5ed .. :try_end_614} :catch_669
    .catch Ljava/lang/NumberFormatException; {:try_start_5ed .. :try_end_614} :catch_660
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5ed .. :try_end_614} :catch_659

    .line 1810
    .end local v40    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .local v7, "parser":Lorg/xmlpull/v1/XmlPullParser;
    :try_start_614
    new-instance v11, Ljava/io/ByteArrayInputStream;
    :try_end_616
    .catch Ljava/io/IOException; {:try_start_614 .. :try_end_616} :catch_648
    .catch Ljava/lang/NumberFormatException; {:try_start_614 .. :try_end_616} :catch_63f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_614 .. :try_end_616} :catch_659

    move-object/from16 v13, v35

    .end local v35    # "mTokenContents":[B
    .local v13, "mTokenContents":[B
    :try_start_618
    invoke-direct {v11, v13}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/4 v5, 0x0

    invoke-interface {v7, v11, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1812
    invoke-direct {v1, v7, v4}, Lcom/android/server/asks/ASKSManagerService;->readRestrictPermissions(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/ArrayList;)V

    .line 1814
    nop

    .line 1819
    invoke-virtual {v3, v4}, Lcom/android/server/asks/ASKSManagerService$Restrict;->setPermissionList(Ljava/util/ArrayList;)V
    :try_end_626
    .catch Ljava/io/IOException; {:try_start_618 .. :try_end_626} :catch_634
    .catch Ljava/lang/NumberFormatException; {:try_start_618 .. :try_end_626} :catch_629
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_618 .. :try_end_626} :catch_6c2

    move-object/from16 v24, v7

    goto :goto_655

    .line 1921
    .end local v2    # "verifyList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "restrict":Lcom/android/server/asks/ASKSManagerService$Restrict;
    .end local v4    # "permissionList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6    # "createDate":Ljava/lang/String;
    .end local v9    # "mycarrier":Ljava/lang/String;
    .end local v12    # "success_check_count":I
    .end local v15    # "isModelChecked":Z
    .end local v19    # "mymodel":Ljava/lang/String;
    .end local v29    # "isValidDate":Z
    .end local v30    # "mode":Ljava/lang/String;
    .end local v33    # "which":I
    .end local v34    # "checkList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v37    # "expiredDate":Ljava/lang/String;
    .end local v38    # "keyValue":Ljava/lang/String;
    .end local v41    # "trustedToday":Ljava/lang/String;
    :catch_629
    move-exception v0

    move-object v1, v0

    move-object/from16 v24, v7

    move-object/from16 v35, v13

    move-object v3, v14

    move-object/from16 v6, v20

    goto/16 :goto_96c

    .line 1916
    :catch_634
    move-exception v0

    move-object v1, v0

    move-object/from16 v24, v7

    move-object/from16 v35, v13

    move-object v3, v14

    move-object/from16 v6, v20

    goto/16 :goto_994

    .line 1921
    .end local v13    # "mTokenContents":[B
    .restart local v35    # "mTokenContents":[B
    :catch_63f
    move-exception v0

    move-object v1, v0

    move-object/from16 v24, v7

    move-object v3, v14

    move-object/from16 v6, v20

    .end local v35    # "mTokenContents":[B
    .restart local v13    # "mTokenContents":[B
    goto/16 :goto_96c

    .line 1916
    .end local v13    # "mTokenContents":[B
    .restart local v35    # "mTokenContents":[B
    :catch_648
    move-exception v0

    move-object v1, v0

    move-object/from16 v24, v7

    move-object v3, v14

    move-object/from16 v6, v20

    .end local v35    # "mTokenContents":[B
    .restart local v13    # "mTokenContents":[B
    goto/16 :goto_994

    .line 1804
    .end local v7    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v13    # "mTokenContents":[B
    .restart local v2    # "verifyList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v3    # "restrict":Lcom/android/server/asks/ASKSManagerService$Restrict;
    .restart local v6    # "createDate":Ljava/lang/String;
    .restart local v9    # "mycarrier":Ljava/lang/String;
    .restart local v12    # "success_check_count":I
    .restart local v15    # "isModelChecked":Z
    .restart local v19    # "mymodel":Ljava/lang/String;
    .restart local v29    # "isValidDate":Z
    .restart local v30    # "mode":Ljava/lang/String;
    .restart local v33    # "which":I
    .restart local v34    # "checkList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v35    # "mTokenContents":[B
    .restart local v37    # "expiredDate":Ljava/lang/String;
    .restart local v38    # "keyValue":Ljava/lang/String;
    .restart local v40    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v41    # "trustedToday":Ljava/lang/String;
    :cond_651
    move-object/from16 v13, v35

    .line 1822
    .end local v35    # "mTokenContents":[B
    .restart local v13    # "mTokenContents":[B
    move-object/from16 v24, v40

    .end local v40    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v24    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :goto_655
    :try_start_655
    invoke-virtual {v10, v3}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->setRestrict(Lcom/android/server/asks/ASKSManagerService$Restrict;)V
    :try_end_658
    .catch Ljava/io/IOException; {:try_start_655 .. :try_end_658} :catch_6d4
    .catch Ljava/lang/NumberFormatException; {:try_start_655 .. :try_end_658} :catch_6cb
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_655 .. :try_end_658} :catch_6c2

    goto :goto_678

    .line 1929
    .end local v2    # "verifyList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "restrict":Lcom/android/server/asks/ASKSManagerService$Restrict;
    .end local v6    # "createDate":Ljava/lang/String;
    .end local v9    # "mycarrier":Ljava/lang/String;
    .end local v12    # "success_check_count":I
    .end local v13    # "mTokenContents":[B
    .end local v15    # "isModelChecked":Z
    .end local v18    # "pullParserFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v19    # "mymodel":Ljava/lang/String;
    .end local v24    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v29    # "isValidDate":Z
    .end local v30    # "mode":Ljava/lang/String;
    .end local v33    # "which":I
    .end local v34    # "checkList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v37    # "expiredDate":Ljava/lang/String;
    .end local v38    # "keyValue":Ljava/lang/String;
    .end local v41    # "trustedToday":Ljava/lang/String;
    .restart local v35    # "mTokenContents":[B
    :catch_659
    move-exception v0

    move-object v1, v0

    move-object v3, v14

    move-object/from16 v6, v20

    .end local v35    # "mTokenContents":[B
    .restart local v13    # "mTokenContents":[B
    goto/16 :goto_9ca

    .line 1921
    .end local v13    # "mTokenContents":[B
    .restart local v18    # "pullParserFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v35    # "mTokenContents":[B
    .restart local v40    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_660
    move-exception v0

    move-object v1, v0

    move-object v3, v14

    move-object/from16 v6, v20

    move-object/from16 v24, v40

    .end local v35    # "mTokenContents":[B
    .restart local v13    # "mTokenContents":[B
    goto/16 :goto_96c

    .line 1916
    .end local v13    # "mTokenContents":[B
    .restart local v35    # "mTokenContents":[B
    :catch_669
    move-exception v0

    move-object v1, v0

    move-object v3, v14

    move-object/from16 v6, v20

    move-object/from16 v24, v40

    .end local v35    # "mTokenContents":[B
    .restart local v13    # "mTokenContents":[B
    goto/16 :goto_994

    .line 1767
    .end local v13    # "mTokenContents":[B
    .restart local v2    # "verifyList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local v3, "mymodel":Ljava/lang/String;
    .restart local v6    # "createDate":Ljava/lang/String;
    .restart local v9    # "mycarrier":Ljava/lang/String;
    .restart local v12    # "success_check_count":I
    .restart local v15    # "isModelChecked":Z
    .restart local v29    # "isValidDate":Z
    .restart local v30    # "mode":Ljava/lang/String;
    .restart local v33    # "which":I
    .restart local v34    # "checkList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v35    # "mTokenContents":[B
    .restart local v37    # "expiredDate":Ljava/lang/String;
    .restart local v38    # "keyValue":Ljava/lang/String;
    .restart local v41    # "trustedToday":Ljava/lang/String;
    :cond_672
    move-object/from16 v19, v3

    move-object/from16 v13, v35

    .line 1826
    .end local v3    # "mymodel":Ljava/lang/String;
    .end local v35    # "mTokenContents":[B
    .restart local v13    # "mTokenContents":[B
    .restart local v19    # "mymodel":Ljava/lang/String;
    move-object/from16 v24, v40

    .end local v40    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v24    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :goto_678
    move-object/from16 v3, v32

    :try_start_67a
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4
    :try_end_67e
    .catch Ljava/io/IOException; {:try_start_67a .. :try_end_67e} :catch_8d7
    .catch Ljava/lang/NumberFormatException; {:try_start_67a .. :try_end_67e} :catch_8ce
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_67a .. :try_end_67e} :catch_8c5

    if-eqz v4, :cond_6dd

    :try_start_680
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6dd

    .line 1828
    const-string v4, "AASA_ASKSManager_EM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EMMODE : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6a6
    .catch Ljava/io/IOException; {:try_start_680 .. :try_end_6a6} :catch_6d4
    .catch Ljava/lang/NumberFormatException; {:try_start_680 .. :try_end_6a6} :catch_6cb
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_680 .. :try_end_6a6} :catch_6c2

    .line 1831
    :try_start_6a6
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1832
    .local v3, "val":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1834
    .local v4, "hexMode":I
    invoke-virtual {v10, v4}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->setEMMode(I)V
    :try_end_6b7
    .catch Ljava/lang/NumberFormatException; {:try_start_6a6 .. :try_end_6b7} :catch_6b8
    .catch Ljava/io/IOException; {:try_start_6a6 .. :try_end_6b7} :catch_6d4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6a6 .. :try_end_6b7} :catch_6c2

    .line 1840
    .end local v3    # "val":Ljava/lang/String;
    .end local v4    # "hexMode":I
    goto :goto_6dd

    .line 1836
    :catch_6b8
    move-exception v0

    move-object v3, v0

    .line 1837
    .local v3, "ne":Ljava/lang/NumberFormatException;
    :try_start_6ba
    const-string v4, "AASA_ASKSManager_EM"

    const-string v5, "EMMODE : NumberFormatException"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6c1
    .catch Ljava/io/IOException; {:try_start_6ba .. :try_end_6c1} :catch_6d4
    .catch Ljava/lang/NumberFormatException; {:try_start_6ba .. :try_end_6c1} :catch_6cb
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6ba .. :try_end_6c1} :catch_6c2

    .line 1839
    return v16

    .line 1929
    .end local v2    # "verifyList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "ne":Ljava/lang/NumberFormatException;
    .end local v6    # "createDate":Ljava/lang/String;
    .end local v9    # "mycarrier":Ljava/lang/String;
    .end local v12    # "success_check_count":I
    .end local v15    # "isModelChecked":Z
    .end local v18    # "pullParserFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v19    # "mymodel":Ljava/lang/String;
    .end local v24    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v29    # "isValidDate":Z
    .end local v30    # "mode":Ljava/lang/String;
    .end local v33    # "which":I
    .end local v34    # "checkList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v37    # "expiredDate":Ljava/lang/String;
    .end local v38    # "keyValue":Ljava/lang/String;
    .end local v41    # "trustedToday":Ljava/lang/String;
    :catch_6c2
    move-exception v0

    move-object v1, v0

    move-object/from16 v35, v13

    move-object v3, v14

    move-object/from16 v6, v20

    goto/16 :goto_9ca

    .line 1921
    .restart local v18    # "pullParserFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v24    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_6cb
    move-exception v0

    move-object v1, v0

    move-object/from16 v35, v13

    move-object v3, v14

    move-object/from16 v6, v20

    goto/16 :goto_96c

    .line 1916
    :catch_6d4
    move-exception v0

    move-object v1, v0

    move-object/from16 v35, v13

    move-object v3, v14

    move-object/from16 v6, v20

    goto/16 :goto_994

    .line 1844
    .restart local v2    # "verifyList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v6    # "createDate":Ljava/lang/String;
    .restart local v9    # "mycarrier":Ljava/lang/String;
    .restart local v12    # "success_check_count":I
    .restart local v15    # "isModelChecked":Z
    .restart local v19    # "mymodel":Ljava/lang/String;
    .restart local v29    # "isValidDate":Z
    .restart local v30    # "mode":Ljava/lang/String;
    .restart local v33    # "which":I
    .restart local v34    # "checkList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v37    # "expiredDate":Ljava/lang/String;
    .restart local v38    # "keyValue":Ljava/lang/String;
    .restart local v41    # "trustedToday":Ljava/lang/String;
    :cond_6dd
    :goto_6dd
    move-object/from16 v3, v22

    :try_start_6df
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4
    :try_end_6e3
    .catch Ljava/io/IOException; {:try_start_6df .. :try_end_6e3} :catch_8d7
    .catch Ljava/lang/NumberFormatException; {:try_start_6df .. :try_end_6e3} :catch_8ce
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6df .. :try_end_6e3} :catch_8c5

    if-eqz v4, :cond_895

    :try_start_6e5
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_895

    .line 1845
    move-object/from16 v4, v21

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5
    :try_end_6f5
    .catch Ljava/io/IOException; {:try_start_6e5 .. :try_end_6f5} :catch_88d
    .catch Ljava/lang/NumberFormatException; {:try_start_6e5 .. :try_end_6f5} :catch_885
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6e5 .. :try_end_6f5} :catch_87d

    const-string v7, "AASA_ASKSManager_RUFS"

    if-eqz v5, :cond_85d

    :try_start_6f9
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_85d

    .line 1846
    const-string v5, "AFTER"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_84c

    const-string v5, "AFTER"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_84c

    .line 1847
    const-string v5, "CHECK"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_83a

    const-string v5, "CHECK"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_83a

    .line 1849
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1850
    .local v3, "rufsversion":Ljava/lang/String;
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1851
    .local v4, "rufsbefore":Ljava/lang/String;
    const-string v5, "AFTER"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1852
    .local v5, "rufsafter":Ljava/lang/String;
    const-string v11, "CHECK"

    invoke-virtual {v2, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 1853
    .local v11, "rufscheck":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_74c
    .catch Ljava/io/IOException; {:try_start_6f9 .. :try_end_74c} :catch_88d
    .catch Ljava/lang/NumberFormatException; {:try_start_6f9 .. :try_end_74c} :catch_885
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6f9 .. :try_end_74c} :catch_87d

    move-object/from16 v21, v6

    move-object/from16 v6, v20

    .end local v6    # "createDate":Ljava/lang/String;
    .local v21, "createDate":Ljava/lang/String;
    :try_start_750
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v20, v9

    .end local v9    # "mycarrier":Ljava/lang/String;
    .local v20, "mycarrier":Ljava/lang/String;
    const-string v9, " :: "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " :: "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " :: "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1855
    new-instance v1, Lcom/android/server/asks/RUFSContainer;

    invoke-direct {v1}, Lcom/android/server/asks/RUFSContainer;-><init>()V

    .line 1857
    .local v1, "mRufsContainer":Lcom/android/server/asks/RUFSContainer;
    invoke-virtual {v1, v3}, Lcom/android/server/asks/RUFSContainer;->setPolicyVersion(Ljava/lang/String;)V
    :try_end_77f
    .catch Ljava/io/IOException; {:try_start_750 .. :try_end_77f} :catch_835
    .catch Ljava/lang/NumberFormatException; {:try_start_750 .. :try_end_77f} :catch_830
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_750 .. :try_end_77f} :catch_82b

    .line 1859
    move-object/from16 v35, v13

    move-object v9, v14

    .end local v13    # "mTokenContents":[B
    .restart local v35    # "mTokenContents":[B
    :try_start_782
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    invoke-virtual {v1, v13, v14}, Lcom/android/server/asks/RUFSContainer;->setSizeofZip(J)V

    .line 1860
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    invoke-virtual {v1, v13, v14}, Lcom/android/server/asks/RUFSContainer;->setSizeofFiles(J)V

    .line 1861
    invoke-virtual {v1, v11}, Lcom/android/server/asks/RUFSContainer;->setDigest(Ljava/lang/String;)V

    .line 1862
    const/4 v13, 0x1

    invoke-virtual {v1, v13}, Lcom/android/server/asks/RUFSContainer;->setHasRUFSToken(Z)V

    .line 1863
    const-string v13, " SET RUFS TOKEN True!"

    invoke-static {v7, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_79c
    .catch Ljava/lang/NumberFormatException; {:try_start_782 .. :try_end_79c} :catch_79d
    .catch Ljava/io/IOException; {:try_start_782 .. :try_end_79c} :catch_878
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_782 .. :try_end_79c} :catch_86e

    .line 1869
    goto :goto_7aa

    .line 1864
    :catch_79d
    move-exception v0

    move-object v13, v0

    .line 1866
    .local v13, "ak":Ljava/lang/NumberFormatException;
    const/4 v14, 0x0

    :try_start_7a0
    invoke-virtual {v1, v14}, Lcom/android/server/asks/RUFSContainer;->setHasRUFSToken(Z)V

    .line 1867
    const-string v14, " SET RUFS TOKEN False!"

    invoke-static {v7, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1868
    add-int/lit8 v12, v12, -0x1

    .line 1871
    .end local v13    # "ak":Ljava/lang/NumberFormatException;
    :goto_7aa
    const-string v7, "ADPMODELS"

    invoke-virtual {v2, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7e8

    const-string v7, "ADPMODELS"

    invoke-virtual {v2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7e8

    .line 1872
    const-string v7, "ADPCARRIERS"

    invoke-virtual {v2, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7e8

    const-string v7, "ADPCARRIERS"

    invoke-virtual {v2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7e8

    .line 1874
    const-string v7, "ADPMODELS"

    invoke-virtual {v2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1875
    .local v7, "adpmodels":Ljava/lang/String;
    const-string v13, "ADPCARRIERS"

    invoke-virtual {v2, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 1876
    .local v13, "adpcarriers":Ljava/lang/String;
    invoke-virtual {v1, v7}, Lcom/android/server/asks/RUFSContainer;->setADPModels(Ljava/lang/String;)V

    .line 1877
    invoke-virtual {v1, v13}, Lcom/android/server/asks/RUFSContainer;->setADPCarriers(Ljava/lang/String;)V

    .line 1881
    .end local v7    # "adpmodels":Ljava/lang/String;
    .end local v13    # "adpcarriers":Ljava/lang/String;
    :cond_7e8
    const-string v7, "ASKSRNEWMODELS"

    invoke-virtual {v2, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_826

    const-string v7, "ASKSRNEWMODELS"

    invoke-virtual {v2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_826

    .line 1882
    const-string v7, "ASKSRNEWCARRIERS"

    invoke-virtual {v2, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_826

    const-string v7, "ASKSRNEWCARRIERS"

    invoke-virtual {v2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_826

    .line 1884
    const-string v7, "ASKSRNEWMODELS"

    invoke-virtual {v2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1885
    .local v7, "asksrnewmodels":Ljava/lang/String;
    const-string v8, "ASKSRNEWCARRIERS"

    invoke-virtual {v2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 1886
    .local v8, "asksrnewcarriers":Ljava/lang/String;
    invoke-virtual {v1, v7}, Lcom/android/server/asks/RUFSContainer;->setASKSRNEWModels(Ljava/lang/String;)V

    .line 1887
    invoke-virtual {v1, v8}, Lcom/android/server/asks/RUFSContainer;->setASKSRNEWCarriers(Ljava/lang/String;)V

    .line 1891
    .end local v7    # "asksrnewmodels":Ljava/lang/String;
    .end local v8    # "asksrnewcarriers":Ljava/lang/String;
    :cond_826
    invoke-virtual {v10, v1}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->setRufsContainer(Lcom/android/server/asks/RUFSContainer;)V

    .line 1893
    .end local v1    # "mRufsContainer":Lcom/android/server/asks/RUFSContainer;
    .end local v3    # "rufsversion":Ljava/lang/String;
    .end local v4    # "rufsbefore":Ljava/lang/String;
    .end local v5    # "rufsafter":Ljava/lang/String;
    .end local v11    # "rufscheck":Ljava/lang/String;
    goto/16 :goto_89e

    .line 1929
    .end local v2    # "verifyList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v12    # "success_check_count":I
    .end local v15    # "isModelChecked":Z
    .end local v18    # "pullParserFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v19    # "mymodel":Ljava/lang/String;
    .end local v20    # "mycarrier":Ljava/lang/String;
    .end local v21    # "createDate":Ljava/lang/String;
    .end local v24    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v29    # "isValidDate":Z
    .end local v30    # "mode":Ljava/lang/String;
    .end local v33    # "which":I
    .end local v34    # "checkList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v35    # "mTokenContents":[B
    .end local v37    # "expiredDate":Ljava/lang/String;
    .end local v38    # "keyValue":Ljava/lang/String;
    .end local v41    # "trustedToday":Ljava/lang/String;
    .local v13, "mTokenContents":[B
    :catch_82b
    move-exception v0

    move-object/from16 v35, v13

    goto/16 :goto_882

    .line 1921
    .restart local v18    # "pullParserFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v24    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_830
    move-exception v0

    move-object/from16 v35, v13

    goto/16 :goto_88a

    .line 1916
    :catch_835
    move-exception v0

    move-object/from16 v35, v13

    goto/16 :goto_892

    .line 1847
    .restart local v2    # "verifyList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v6    # "createDate":Ljava/lang/String;
    .restart local v9    # "mycarrier":Ljava/lang/String;
    .restart local v12    # "success_check_count":I
    .restart local v15    # "isModelChecked":Z
    .restart local v19    # "mymodel":Ljava/lang/String;
    .restart local v29    # "isValidDate":Z
    .restart local v30    # "mode":Ljava/lang/String;
    .restart local v33    # "which":I
    .restart local v34    # "checkList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v37    # "expiredDate":Ljava/lang/String;
    .restart local v38    # "keyValue":Ljava/lang/String;
    .restart local v41    # "trustedToday":Ljava/lang/String;
    :cond_83a
    move-object/from16 v21, v6

    move-object/from16 v35, v13

    move-object/from16 v6, v20

    move-object/from16 v20, v9

    move-object v9, v14

    .line 1894
    .end local v6    # "createDate":Ljava/lang/String;
    .end local v9    # "mycarrier":Ljava/lang/String;
    .end local v13    # "mTokenContents":[B
    .restart local v20    # "mycarrier":Ljava/lang/String;
    .restart local v21    # "createDate":Ljava/lang/String;
    .restart local v35    # "mTokenContents":[B
    const-string v1, "ERROR: CHECK in RUFS"

    invoke-static {v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1895
    add-int/lit8 v12, v12, -0x1

    goto/16 :goto_89e

    .line 1846
    .end local v20    # "mycarrier":Ljava/lang/String;
    .end local v21    # "createDate":Ljava/lang/String;
    .end local v35    # "mTokenContents":[B
    .restart local v6    # "createDate":Ljava/lang/String;
    .restart local v9    # "mycarrier":Ljava/lang/String;
    .restart local v13    # "mTokenContents":[B
    :cond_84c
    move-object/from16 v21, v6

    move-object/from16 v35, v13

    move-object/from16 v6, v20

    move-object/from16 v20, v9

    move-object v9, v14

    .line 1898
    .end local v6    # "createDate":Ljava/lang/String;
    .end local v9    # "mycarrier":Ljava/lang/String;
    .end local v13    # "mTokenContents":[B
    .restart local v20    # "mycarrier":Ljava/lang/String;
    .restart local v21    # "createDate":Ljava/lang/String;
    .restart local v35    # "mTokenContents":[B
    const-string v1, "ERROR: AFTER in RUFS"

    invoke-static {v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1899
    add-int/lit8 v12, v12, -0x1

    goto :goto_89e

    .line 1845
    .end local v20    # "mycarrier":Ljava/lang/String;
    .end local v21    # "createDate":Ljava/lang/String;
    .end local v35    # "mTokenContents":[B
    .restart local v6    # "createDate":Ljava/lang/String;
    .restart local v9    # "mycarrier":Ljava/lang/String;
    .restart local v13    # "mTokenContents":[B
    :cond_85d
    move-object/from16 v21, v6

    move-object/from16 v35, v13

    move-object/from16 v6, v20

    move-object/from16 v20, v9

    move-object v9, v14

    .line 1902
    .end local v6    # "createDate":Ljava/lang/String;
    .end local v9    # "mycarrier":Ljava/lang/String;
    .end local v13    # "mTokenContents":[B
    .restart local v20    # "mycarrier":Ljava/lang/String;
    .restart local v21    # "createDate":Ljava/lang/String;
    .restart local v35    # "mTokenContents":[B
    const-string v1, "ERROR: BEFORE in RUFS"

    invoke-static {v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_86b
    .catch Ljava/io/IOException; {:try_start_7a0 .. :try_end_86b} :catch_878
    .catch Ljava/lang/NumberFormatException; {:try_start_7a0 .. :try_end_86b} :catch_873
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7a0 .. :try_end_86b} :catch_86e

    .line 1903
    add-int/lit8 v12, v12, -0x1

    goto :goto_89e

    .line 1929
    .end local v2    # "verifyList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v12    # "success_check_count":I
    .end local v15    # "isModelChecked":Z
    .end local v18    # "pullParserFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v19    # "mymodel":Ljava/lang/String;
    .end local v20    # "mycarrier":Ljava/lang/String;
    .end local v21    # "createDate":Ljava/lang/String;
    .end local v24    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v29    # "isValidDate":Z
    .end local v30    # "mode":Ljava/lang/String;
    .end local v33    # "which":I
    .end local v34    # "checkList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v37    # "expiredDate":Ljava/lang/String;
    .end local v38    # "keyValue":Ljava/lang/String;
    .end local v41    # "trustedToday":Ljava/lang/String;
    :catch_86e
    move-exception v0

    move-object v1, v0

    move-object v3, v9

    goto/16 :goto_9ca

    .line 1921
    .restart local v18    # "pullParserFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v24    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_873
    move-exception v0

    move-object v1, v0

    move-object v3, v9

    goto/16 :goto_96c

    .line 1916
    :catch_878
    move-exception v0

    move-object v1, v0

    move-object v3, v9

    goto/16 :goto_994

    .line 1929
    .end local v18    # "pullParserFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v24    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v35    # "mTokenContents":[B
    .restart local v13    # "mTokenContents":[B
    :catch_87d
    move-exception v0

    move-object/from16 v35, v13

    move-object/from16 v6, v20

    :goto_882
    move-object v1, v0

    move-object v3, v14

    goto :goto_8cc

    .line 1921
    .restart local v18    # "pullParserFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v24    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_885
    move-exception v0

    move-object/from16 v35, v13

    move-object/from16 v6, v20

    :goto_88a
    move-object v1, v0

    move-object v3, v14

    goto :goto_8d5

    .line 1916
    :catch_88d
    move-exception v0

    move-object/from16 v35, v13

    move-object/from16 v6, v20

    :goto_892
    move-object v1, v0

    move-object v3, v14

    goto :goto_8de

    .line 1844
    .restart local v2    # "verifyList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v6    # "createDate":Ljava/lang/String;
    .restart local v9    # "mycarrier":Ljava/lang/String;
    .restart local v12    # "success_check_count":I
    .restart local v15    # "isModelChecked":Z
    .restart local v19    # "mymodel":Ljava/lang/String;
    .restart local v29    # "isValidDate":Z
    .restart local v30    # "mode":Ljava/lang/String;
    .restart local v33    # "which":I
    .restart local v34    # "checkList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v37    # "expiredDate":Ljava/lang/String;
    .restart local v38    # "keyValue":Ljava/lang/String;
    .restart local v41    # "trustedToday":Ljava/lang/String;
    :cond_895
    move-object/from16 v21, v6

    move-object/from16 v35, v13

    move-object/from16 v6, v20

    move-object/from16 v20, v9

    move-object v9, v14

    .line 1907
    .end local v6    # "createDate":Ljava/lang/String;
    .end local v9    # "mycarrier":Ljava/lang/String;
    .end local v13    # "mTokenContents":[B
    .restart local v20    # "mycarrier":Ljava/lang/String;
    .restart local v21    # "createDate":Ljava/lang/String;
    .restart local v35    # "mTokenContents":[B
    :goto_89e
    if-nez v12, :cond_8b2

    .line 1908
    :try_start_8a0
    const-string v1, " Pass ALL"
    :try_end_8a2
    .catch Ljava/io/IOException; {:try_start_8a0 .. :try_end_8a2} :catch_8af
    .catch Ljava/lang/NumberFormatException; {:try_start_8a0 .. :try_end_8a2} :catch_8ac
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8a0 .. :try_end_8a2} :catch_8a8

    move-object v3, v9

    :try_start_8a3
    invoke-static {v3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1910
    const/4 v1, 0x0

    return v1

    .line 1929
    .end local v2    # "verifyList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v12    # "success_check_count":I
    .end local v15    # "isModelChecked":Z
    .end local v18    # "pullParserFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v19    # "mymodel":Ljava/lang/String;
    .end local v20    # "mycarrier":Ljava/lang/String;
    .end local v21    # "createDate":Ljava/lang/String;
    .end local v24    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v29    # "isValidDate":Z
    .end local v30    # "mode":Ljava/lang/String;
    .end local v33    # "which":I
    .end local v34    # "checkList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v37    # "expiredDate":Ljava/lang/String;
    .end local v38    # "keyValue":Ljava/lang/String;
    .end local v41    # "trustedToday":Ljava/lang/String;
    :catch_8a8
    move-exception v0

    move-object v3, v9

    goto/16 :goto_9af

    .line 1921
    .restart local v18    # "pullParserFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v24    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_8ac
    move-exception v0

    move-object v3, v9

    goto :goto_8be

    .line 1916
    :catch_8af
    move-exception v0

    move-object v3, v9

    goto :goto_8c2

    .line 1913
    .restart local v2    # "verifyList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v12    # "success_check_count":I
    .restart local v15    # "isModelChecked":Z
    .restart local v19    # "mymodel":Ljava/lang/String;
    .restart local v20    # "mycarrier":Ljava/lang/String;
    .restart local v21    # "createDate":Ljava/lang/String;
    .restart local v29    # "isValidDate":Z
    .restart local v30    # "mode":Ljava/lang/String;
    .restart local v33    # "which":I
    .restart local v34    # "checkList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v37    # "expiredDate":Ljava/lang/String;
    .restart local v38    # "keyValue":Ljava/lang/String;
    .restart local v41    # "trustedToday":Ljava/lang/String;
    :cond_8b2
    move-object v3, v9

    const-string v1, " Fail: auth"

    invoke-static {v3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8b8
    .catch Ljava/io/IOException; {:try_start_8a3 .. :try_end_8b8} :catch_8c1
    .catch Ljava/lang/NumberFormatException; {:try_start_8a3 .. :try_end_8b8} :catch_8bd
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8a3 .. :try_end_8b8} :catch_9ae

    .line 1926
    .end local v2    # "verifyList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v12    # "success_check_count":I
    .end local v15    # "isModelChecked":Z
    .end local v19    # "mymodel":Ljava/lang/String;
    .end local v20    # "mycarrier":Ljava/lang/String;
    .end local v21    # "createDate":Ljava/lang/String;
    .end local v29    # "isValidDate":Z
    .end local v30    # "mode":Ljava/lang/String;
    .end local v33    # "which":I
    .end local v34    # "checkList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v37    # "expiredDate":Ljava/lang/String;
    .end local v38    # "keyValue":Ljava/lang/String;
    .end local v41    # "trustedToday":Ljava/lang/String;
    nop

    .line 1933
    .end local v24    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    nop

    .line 1934
    const/16 v1, 0xdd

    return v1

    .line 1921
    .restart local v24    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_8bd
    move-exception v0

    :goto_8be
    move-object v1, v0

    goto/16 :goto_96c

    .line 1916
    :catch_8c1
    move-exception v0

    :goto_8c2
    move-object v1, v0

    goto/16 :goto_994

    .line 1929
    .end local v18    # "pullParserFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v24    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v35    # "mTokenContents":[B
    .restart local v13    # "mTokenContents":[B
    :catch_8c5
    move-exception v0

    move-object/from16 v35, v13

    move-object v3, v14

    move-object/from16 v6, v20

    move-object v1, v0

    .end local v13    # "mTokenContents":[B
    .restart local v35    # "mTokenContents":[B
    :goto_8cc
    goto/16 :goto_9ca

    .line 1921
    .end local v35    # "mTokenContents":[B
    .restart local v13    # "mTokenContents":[B
    .restart local v18    # "pullParserFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v24    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_8ce
    move-exception v0

    move-object/from16 v35, v13

    move-object v3, v14

    move-object/from16 v6, v20

    move-object v1, v0

    .end local v13    # "mTokenContents":[B
    .restart local v35    # "mTokenContents":[B
    :goto_8d5
    goto/16 :goto_96c

    .line 1916
    .end local v35    # "mTokenContents":[B
    .restart local v13    # "mTokenContents":[B
    :catch_8d7
    move-exception v0

    move-object/from16 v35, v13

    move-object v3, v14

    move-object/from16 v6, v20

    move-object v1, v0

    .end local v13    # "mTokenContents":[B
    .restart local v35    # "mTokenContents":[B
    :goto_8de
    goto/16 :goto_994

    .line 1929
    .end local v18    # "pullParserFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v24    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_8e0
    move-exception v0

    goto :goto_8ff

    .line 1921
    .restart local v18    # "pullParserFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v40    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_8e2
    move-exception v0

    goto :goto_8e9

    .line 1916
    :catch_8e4
    move-exception v0

    goto :goto_8f4

    .line 1921
    :catch_8e6
    move-exception v0

    move-object/from16 v10, p1

    :goto_8e9
    move-object v3, v14

    move-object/from16 v6, v20

    move-object v1, v0

    :goto_8ed
    move-object/from16 v24, v40

    goto/16 :goto_96c

    .line 1916
    :catch_8f1
    move-exception v0

    move-object/from16 v10, p1

    :goto_8f4
    move-object v3, v14

    move-object/from16 v6, v20

    move-object v1, v0

    :goto_8f8
    move-object/from16 v24, v40

    goto/16 :goto_994

    .line 1929
    .end local v18    # "pullParserFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v40    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_8fc
    move-exception v0

    move-object/from16 v10, p1

    :goto_8ff
    move-object v3, v14

    move-object/from16 v6, v20

    goto/16 :goto_9af

    .line 1921
    .local v9, "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v18    # "pullParserFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    :catch_904
    move-exception v0

    move-object/from16 v10, p1

    move-object/from16 v40, v9

    move-object v3, v14

    move-object/from16 v6, v20

    move-object v1, v0

    move-object/from16 v24, v40

    .end local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v40    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    goto/16 :goto_96c

    .line 1916
    .end local v40    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_911
    move-exception v0

    move-object/from16 v10, p1

    move-object/from16 v40, v9

    move-object v3, v14

    move-object/from16 v6, v20

    move-object v1, v0

    move-object/from16 v24, v40

    .end local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v40    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    goto/16 :goto_994

    .line 1921
    .end local v35    # "mTokenContents":[B
    .end local v40    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .local v12, "mTokenContents":[B
    :catch_91e
    move-exception v0

    move-object/from16 v10, p1

    move-object/from16 v40, v9

    move-object/from16 v35, v12

    move-object v3, v14

    move-object/from16 v6, v20

    move-object v1, v0

    move-object/from16 v24, v40

    .end local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v12    # "mTokenContents":[B
    .restart local v35    # "mTokenContents":[B
    .restart local v40    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    goto :goto_96c

    .line 1916
    .end local v35    # "mTokenContents":[B
    .end local v40    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v12    # "mTokenContents":[B
    :catch_92c
    move-exception v0

    move-object/from16 v10, p1

    move-object/from16 v40, v9

    move-object/from16 v35, v12

    move-object v3, v14

    move-object/from16 v6, v20

    move-object v1, v0

    move-object/from16 v24, v40

    .end local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v12    # "mTokenContents":[B
    .restart local v35    # "mTokenContents":[B
    .restart local v40    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    goto/16 :goto_994

    .line 1929
    .end local v18    # "pullParserFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v35    # "mTokenContents":[B
    .end local v40    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v12    # "mTokenContents":[B
    :catch_93b
    move-exception v0

    move-object/from16 v10, p1

    move-object/from16 v35, v12

    move-object v3, v14

    move-object/from16 v6, v20

    move-object v1, v0

    .end local v12    # "mTokenContents":[B
    .restart local v35    # "mTokenContents":[B
    goto/16 :goto_9ca

    .line 1921
    .end local v35    # "mTokenContents":[B
    .restart local v12    # "mTokenContents":[B
    .restart local v18    # "pullParserFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .local v29, "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_946
    move-exception v0

    move-object/from16 v10, p1

    move-object/from16 v35, v12

    move-object v3, v14

    move-object/from16 v6, v20

    move-object v1, v0

    move-object/from16 v24, v29

    .end local v12    # "mTokenContents":[B
    .restart local v35    # "mTokenContents":[B
    goto :goto_96c

    .line 1916
    .end local v35    # "mTokenContents":[B
    .restart local v12    # "mTokenContents":[B
    :catch_952
    move-exception v0

    move-object/from16 v10, p1

    move-object/from16 v35, v12

    move-object v3, v14

    move-object/from16 v6, v20

    move-object v1, v0

    move-object/from16 v24, v29

    .end local v12    # "mTokenContents":[B
    .restart local v35    # "mTokenContents":[B
    goto :goto_994

    .line 1921
    .end local v29    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v31    # "mArchiveSourcePath":Ljava/lang/String;
    .end local v35    # "mTokenContents":[B
    .local v7, "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v12    # "mTokenContents":[B
    .local v15, "mArchiveSourcePath":Ljava/lang/String;
    :catch_95e
    move-exception v0

    move-object v10, v2

    move-object/from16 v29, v7

    move-object/from16 v35, v12

    move-object v3, v14

    move-object/from16 v31, v15

    move-object/from16 v6, v20

    move-object v1, v0

    move-object/from16 v24, v29

    .line 1923
    .end local v7    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v12    # "mTokenContents":[B
    .end local v15    # "mArchiveSourcePath":Ljava/lang/String;
    .local v1, "nfe":Ljava/lang/NumberFormatException;
    .restart local v24    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v31    # "mArchiveSourcePath":Ljava/lang/String;
    .restart local v35    # "mTokenContents":[B
    :goto_96c
    :try_start_96c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1924
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 1925
    return v16

    .line 1916
    .end local v1    # "nfe":Ljava/lang/NumberFormatException;
    .end local v24    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v31    # "mArchiveSourcePath":Ljava/lang/String;
    .end local v35    # "mTokenContents":[B
    .restart local v7    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v12    # "mTokenContents":[B
    .restart local v15    # "mArchiveSourcePath":Ljava/lang/String;
    :catch_986
    move-exception v0

    move-object v10, v2

    move-object/from16 v29, v7

    move-object/from16 v35, v12

    move-object v3, v14

    move-object/from16 v31, v15

    move-object/from16 v6, v20

    move-object v1, v0

    move-object/from16 v24, v29

    .line 1918
    .end local v7    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v12    # "mTokenContents":[B
    .end local v15    # "mArchiveSourcePath":Ljava/lang/String;
    .local v1, "e":Ljava/io/IOException;
    .restart local v24    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v31    # "mArchiveSourcePath":Ljava/lang/String;
    .restart local v35    # "mTokenContents":[B
    :goto_994
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1919
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_9ad
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_96c .. :try_end_9ad} :catch_9ae

    .line 1920
    return v16

    .line 1929
    .end local v1    # "e":Ljava/io/IOException;
    .end local v18    # "pullParserFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v24    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_9ae
    move-exception v0

    :goto_9af
    move-object v1, v0

    goto :goto_9ca

    .end local v31    # "mArchiveSourcePath":Ljava/lang/String;
    .end local v35    # "mTokenContents":[B
    .restart local v12    # "mTokenContents":[B
    .restart local v15    # "mArchiveSourcePath":Ljava/lang/String;
    :catch_9b1
    move-exception v0

    move-object v10, v2

    move-object/from16 v35, v12

    move-object v3, v14

    move-object/from16 v31, v15

    move-object/from16 v6, v20

    move-object v1, v0

    .end local v12    # "mTokenContents":[B
    .end local v15    # "mArchiveSourcePath":Ljava/lang/String;
    .restart local v31    # "mArchiveSourcePath":Ljava/lang/String;
    .restart local v35    # "mTokenContents":[B
    goto :goto_9ca

    .end local v25    # "mTokenFile":Landroid/util/jar/StrictJarFile;
    .end local v26    # "mTokenEntry":Ljava/util/zip/ZipEntry;
    .end local v31    # "mArchiveSourcePath":Ljava/lang/String;
    .end local v35    # "mTokenContents":[B
    .local v6, "mTokenFile":Landroid/util/jar/StrictJarFile;
    .local v7, "mTokenEntry":Ljava/util/zip/ZipEntry;
    .restart local v12    # "mTokenContents":[B
    .restart local v15    # "mArchiveSourcePath":Ljava/lang/String;
    :catch_9bc
    move-exception v0

    move-object v10, v2

    move-object/from16 v25, v6

    move-object/from16 v26, v7

    move-object/from16 v35, v12

    move-object v3, v14

    move-object/from16 v31, v15

    move-object/from16 v6, v20

    move-object v1, v0

    .line 1931
    .end local v6    # "mTokenFile":Landroid/util/jar/StrictJarFile;
    .end local v7    # "mTokenEntry":Ljava/util/zip/ZipEntry;
    .end local v12    # "mTokenContents":[B
    .end local v15    # "mArchiveSourcePath":Ljava/lang/String;
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v25    # "mTokenFile":Landroid/util/jar/StrictJarFile;
    .restart local v26    # "mTokenEntry":Ljava/util/zip/ZipEntry;
    .restart local v31    # "mArchiveSourcePath":Ljava/lang/String;
    .restart local v35    # "mTokenContents":[B
    :goto_9ca
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1932
    return v16

    .line 1514
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v25    # "mTokenFile":Landroid/util/jar/StrictJarFile;
    .end local v26    # "mTokenEntry":Ljava/util/zip/ZipEntry;
    .end local v31    # "mArchiveSourcePath":Ljava/lang/String;
    .end local v35    # "mTokenContents":[B
    .restart local v7    # "mTokenEntry":Ljava/util/zip/ZipEntry;
    .restart local v12    # "mTokenContents":[B
    .restart local v15    # "mArchiveSourcePath":Ljava/lang/String;
    .restart local v16    # "mTokenFile":Landroid/util/jar/StrictJarFile;
    :cond_9e1
    move-object v10, v2

    move-object/from16 v35, v12

    move-object v3, v14

    move-object/from16 v31, v15

    .line 1516
    .end local v12    # "mTokenContents":[B
    .end local v15    # "mArchiveSourcePath":Ljava/lang/String;
    .restart local v31    # "mArchiveSourcePath":Ljava/lang/String;
    .restart local v35    # "mTokenContents":[B
    :goto_9e7
    const-string v1, " ERROR: plz check certification in the device - Fail to check integrity"

    invoke-static {v3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1517
    new-instance v1, Ljava/lang/String;

    move-object/from16 v2, v35

    .end local v35    # "mTokenContents":[B
    .local v2, "mTokenContents":[B
    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    .line 1518
    .local v1, "errorCo":Ljava/lang/String;
    const/4 v3, 0x0

    .line 1520
    .local v3, "checkIntegrityResult":I
    :try_start_9f4
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_9f8
    .catch Ljava/lang/NumberFormatException; {:try_start_9f4 .. :try_end_9f8} :catch_9fa

    move v3, v4

    .line 1522
    goto :goto_9fb

    .line 1521
    :catch_9fa
    move-exception v0

    .line 1523
    :goto_9fb
    return v3

    .line 1504
    .end local v1    # "errorCo":Ljava/lang/String;
    .end local v2    # "mTokenContents":[B
    .end local v3    # "checkIntegrityResult":I
    .end local v7    # "mTokenEntry":Ljava/util/zip/ZipEntry;
    .end local v31    # "mArchiveSourcePath":Ljava/lang/String;
    .restart local v15    # "mArchiveSourcePath":Ljava/lang/String;
    .local v16, "mTokenContents":[B
    .local v18, "mTokenFile":Landroid/util/jar/StrictJarFile;
    .local v19, "mTokenEntry":Ljava/util/zip/ZipEntry;
    :catchall_9fc
    move-exception v0

    move-object v10, v2

    move-object/from16 v31, v15

    move-object v1, v0

    move/from16 v15, v17

    .end local v17    # "mIsBlockDeploy":Z
    .local v15, "mIsBlockDeploy":Z
    .restart local v31    # "mArchiveSourcePath":Ljava/lang/String;
    :goto_a03
    if-eqz v18, :cond_a08

    .line 1505
    invoke-virtual/range {v18 .. v18}, Landroid/util/jar/StrictJarFile;->close()V

    .line 1506
    :cond_a08
    throw v1
.end method

.method private writeASKSFileIntegrity([B)V
    .registers 8
    .param p1, "hashVal"    # [B

    .line 3401
    if-nez p1, :cond_b

    .line 3404
    :try_start_2
    const-string v0, "/data/system/.aasa/asks.xml"

    invoke-direct {p0, v0}, Lcom/android/server/asks/ASKSManagerService;->getApkFileHashBytes(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_8} :catch_a

    move-object p1, v0

    .line 3406
    goto :goto_b

    .line 3405
    :catch_a
    move-exception v0

    .line 3409
    :cond_b
    :goto_b
    const-string/jumbo v0, "null"

    const-string/jumbo v1, "ro.product.model"

    const/16 v2, 0x7b

    const-string v3, "AASA_ASKSManager"

    if-eqz p1, :cond_6d

    .line 3411
    invoke-direct {p0}, Lcom/android/server/asks/ASKSManagerService;->getVaultKeeperManager()Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    move-result-object v4

    if-eqz v4, :cond_5e

    .line 3413
    invoke-direct {p0}, Lcom/android/server/asks/ASKSManagerService;->getVaultKeeperManager()Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5, p1}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->write(I[B)I

    move-result v4

    .line 3414
    .local v4, "result":I
    if-eqz v4, :cond_57

    .line 3416
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VAULT_KEEPER_WRITE_FAILED_"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/android/server/asks/ASKSManagerService;->convertToHex([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v2, v0, v1}, Lcom/android/server/asks/ASKSManagerService;->setSamsungAnalyticsLog(ILjava/lang/String;Ljava/lang/String;)V

    .line 3417
    const-string/jumbo v0, "write failed to vault"

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5d

    .line 3420
    :cond_57
    const-string/jumbo v0, "write success to vault"

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3422
    .end local v4    # "result":I
    :goto_5d
    goto :goto_7b

    .line 3424
    :cond_5e
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "GET_VAULT_KEEPER_FAILED"

    invoke-direct {p0, v2, v0, v1}, Lcom/android/server/asks/ASKSManagerService;->setSamsungAnalyticsLog(ILjava/lang/String;Ljava/lang/String;)V

    .line 3425
    const-string v0, "failed to get vault service"

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7b

    .line 3429
    :cond_6d
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CANNOT_GET_FILE_HASH"

    invoke-direct {p0, v2, v0, v1}, Lcom/android/server/asks/ASKSManagerService;->setSamsungAnalyticsLog(ILjava/lang/String;Ljava/lang/String;)V

    .line 3430
    const-string v0, "failed to get file hash"

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3432
    :goto_7b
    return-void
.end method

.method private writeBlockApkList(Ljava/lang/String;)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;

    .line 2395
    const-string v0, "AASA_ASKSManager"

    const/4 v1, 0x0

    .line 2398
    .local v1, "pw":Ljava/io/PrintWriter;
    :try_start_3
    new-instance v2, Ljava/io/File;

    const-string v3, "/data/system/.aasa/blockedList.log"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2399
    .local v2, "fname":Ljava/io/File;
    new-instance v3, Ljava/io/FileOutputStream;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 2400
    .local v3, "out":Ljava/io/FileOutputStream;
    new-instance v4, Lcom/android/internal/util/FastPrintWriter;

    invoke-direct {v4, v3}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    move-object v1, v4

    .line 2401
    invoke-virtual {v1, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2402
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    .line 2403
    const-string/jumbo v4, "writeBlockApkList() Success"

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_22} :catch_29
    .catchall {:try_start_3 .. :try_end_22} :catchall_27

    .line 2407
    nop

    .line 2408
    .end local v2    # "fname":Ljava/io/File;
    .end local v3    # "out":Ljava/io/FileOutputStream;
    :goto_23
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    goto :goto_43

    .line 2407
    :catchall_27
    move-exception v0

    goto :goto_44

    .line 2404
    :catch_29
    move-exception v2

    .line 2405
    .local v2, "e":Ljava/io/IOException;
    :try_start_2a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "writeBlockApkList() Fail "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3f
    .catchall {:try_start_2a .. :try_end_3f} :catchall_27

    .line 2407
    nop

    .end local v2    # "e":Ljava/io/IOException;
    if-eqz v1, :cond_43

    .line 2408
    goto :goto_23

    .line 2410
    :cond_43
    :goto_43
    return-void

    .line 2407
    :goto_44
    if-eqz v1, :cond_49

    .line 2408
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    .line 2409
    :cond_49
    throw v0
.end method

.method private writeState()V
    .registers 1

    .line 3571
    invoke-direct {p0}, Lcom/android/server/asks/ASKSManagerService;->writeStateInner()V

    .line 3589
    return-void
.end method

.method private writeStateInner()V
    .registers 14

    .line 3592
    iget-object v0, p0, Lcom/android/server/asks/ASKSManagerService;->mFile:Landroid/util/AtomicFile;

    monitor-enter v0

    .line 3595
    :try_start_3
    iget-object v1, p0, Lcom/android/server/asks/ASKSManagerService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v1
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_9} :catch_15b
    .catchall {:try_start_3 .. :try_end_9} :catchall_159

    .line 3599
    .local v1, "stream":Ljava/io/FileOutputStream;
    nop

    .line 3601
    :try_start_a
    iget-object v2, p0, Lcom/android/server/asks/ASKSManagerService;->mASKSStates:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;
    :try_end_12
    .catchall {:try_start_a .. :try_end_12} :catchall_159

    .line 3604
    .local v2, "clonedMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/asks/ASKSManagerService$ASKSState;>;"
    :try_start_12
    new-instance v3, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v3}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 3605
    .local v3, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 3606
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v3, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 3607
    const-string v4, "asks"

    invoke-interface {v3, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3608
    const-string/jumbo v4, "version"

    sget-object v6, Lcom/android/server/asks/ASKSManagerService;->mASKSPolicyVersion:Ljava/lang/String;

    invoke-interface {v3, v5, v4, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3610
    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 3611
    .local v4, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 3613
    .local v6, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_3e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_134

    .line 3615
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 3616
    .local v7, "pkgName":Ljava/lang/String;
    invoke-virtual {v2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/asks/ASKSManagerService$ASKSState;

    .line 3617
    .local v8, "state":Lcom/android/server/asks/ASKSManagerService$ASKSState;
    if-eqz v8, :cond_132

    invoke-virtual {v8}, Lcom/android/server/asks/ASKSManagerService$ASKSState;->hasValue()Z

    move-result v9

    if-eqz v9, :cond_132

    .line 3619
    const-string/jumbo v9, "package"

    invoke-interface {v3, v5, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3620
    const-string/jumbo v9, "name"

    invoke-interface {v3, v5, v9, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3621
    invoke-virtual {v8}, Lcom/android/server/asks/ASKSManagerService$ASKSState;->getRestrict()Lcom/android/server/asks/ASKSManagerService$Restrict;

    move-result-object v9

    if-eqz v9, :cond_d5

    .line 3622
    invoke-virtual {v8}, Lcom/android/server/asks/ASKSManagerService$ASKSState;->getRestrict()Lcom/android/server/asks/ASKSManagerService$Restrict;

    move-result-object v9

    .line 3623
    .local v9, "restrict":Lcom/android/server/asks/ASKSManagerService$Restrict;
    const-string/jumbo v10, "restrict"

    invoke-interface {v3, v5, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3624
    const-string/jumbo v10, "version"

    invoke-virtual {v9}, Lcom/android/server/asks/ASKSManagerService$Restrict;->getVersion()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v3, v5, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3625
    const-string/jumbo v10, "type"

    invoke-virtual {v9}, Lcom/android/server/asks/ASKSManagerService$Restrict;->getType()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v3, v5, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3626
    const-string v10, "datelimit"

    invoke-virtual {v9}, Lcom/android/server/asks/ASKSManagerService$Restrict;->getDateLimit()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v3, v5, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3627
    const-string/jumbo v10, "from"

    invoke-virtual {v9}, Lcom/android/server/asks/ASKSManagerService$Restrict;->getFrom()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v3, v5, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3628
    const-string v10, "REVOKE"

    invoke-virtual {v9}, Lcom/android/server/asks/ASKSManagerService$Restrict;->getType()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_cf

    .line 3629
    invoke-virtual {v9}, Lcom/android/server/asks/ASKSManagerService$Restrict;->getPermissionList()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_af
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_cf

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 3630
    .local v11, "pm":Ljava/lang/String;
    const-string/jumbo v12, "permission"

    invoke-interface {v3, v5, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3631
    const-string/jumbo v12, "value"

    invoke-interface {v3, v5, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3632
    const-string/jumbo v12, "permission"

    invoke-interface {v3, v5, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3633
    nop

    .end local v11    # "pm":Ljava/lang/String;
    goto :goto_af

    .line 3635
    :cond_cf
    const-string/jumbo v10, "restrict"

    invoke-interface {v3, v5, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3638
    .end local v9    # "restrict":Lcom/android/server/asks/ASKSManagerService$Restrict;
    :cond_d5
    invoke-virtual {v8}, Lcom/android/server/asks/ASKSManagerService$ASKSState;->getEMMode()I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_105

    .line 3639
    invoke-virtual {v8}, Lcom/android/server/asks/ASKSManagerService$ASKSState;->getEMMode()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    .line 3640
    .local v9, "mode":Ljava/lang/String;
    const-string v10, "emmode"

    invoke-interface {v3, v5, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3641
    const-string/jumbo v10, "value"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "0x"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v3, v5, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3642
    const-string v10, "emmode"

    invoke-interface {v3, v5, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3644
    .end local v9    # "mode":Ljava/lang/String;
    :cond_105
    invoke-virtual {v8}, Lcom/android/server/asks/ASKSManagerService$ASKSState;->getDeletable()Lcom/android/server/asks/ASKSManagerService$Deletable;

    move-result-object v9

    if-eqz v9, :cond_12c

    .line 3645
    invoke-virtual {v8}, Lcom/android/server/asks/ASKSManagerService$ASKSState;->getDeletable()Lcom/android/server/asks/ASKSManagerService$Deletable;

    move-result-object v9

    .line 3646
    .local v9, "deletable":Lcom/android/server/asks/ASKSManagerService$Deletable;
    const-string v10, "delete"

    invoke-interface {v3, v5, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3647
    const-string/jumbo v10, "version"

    invoke-virtual {v9}, Lcom/android/server/asks/ASKSManagerService$Deletable;->getVersion()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v3, v5, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3648
    const-string v10, "datelimit"

    invoke-virtual {v9}, Lcom/android/server/asks/ASKSManagerService$Deletable;->getDateLimit()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v3, v5, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3649
    const-string v10, "delete"

    invoke-interface {v3, v5, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3651
    .end local v9    # "deletable":Lcom/android/server/asks/ASKSManagerService$Deletable;
    :cond_12c
    const-string/jumbo v9, "package"

    invoke-interface {v3, v5, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3653
    .end local v7    # "pkgName":Ljava/lang/String;
    .end local v8    # "state":Lcom/android/server/asks/ASKSManagerService$ASKSState;
    :cond_132
    goto/16 :goto_3e

    .line 3654
    :cond_134
    const-string v7, "asks"

    invoke-interface {v3, v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3655
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 3656
    iget-object v5, p0, Lcom/android/server/asks/ASKSManagerService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v5, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    .line 3657
    const-string/jumbo v5, "security.ASKS.policy_version"

    sget-object v7, Lcom/android/server/asks/ASKSManagerService;->mASKSPolicyVersion:Ljava/lang/String;

    invoke-static {v5, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_149
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_149} :catch_14a
    .catchall {:try_start_12 .. :try_end_149} :catchall_159

    .line 3661
    .end local v3    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v4    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v6    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    goto :goto_157

    .line 3658
    :catch_14a
    move-exception v3

    .line 3659
    .local v3, "e":Ljava/io/IOException;
    :try_start_14b
    const-string v4, "AASA_ASKSManager"

    const-string v5, "Failed to write state, restoring backup"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3660
    iget-object v4, p0, Lcom/android/server/asks/ASKSManagerService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v4, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 3662
    .end local v1    # "stream":Ljava/io/FileOutputStream;
    .end local v2    # "clonedMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/asks/ASKSManagerService$ASKSState;>;"
    .end local v3    # "e":Ljava/io/IOException;
    :goto_157
    monitor-exit v0

    .line 3663
    return-void

    .line 3662
    :catchall_159
    move-exception v1

    goto :goto_174

    .line 3596
    :catch_15b
    move-exception v1

    .line 3597
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "AASA_ASKSManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to write state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3598
    monitor-exit v0

    return-void

    .line 3662
    .end local v1    # "e":Ljava/io/IOException;
    :goto_174
    monitor-exit v0
    :try_end_175
    .catchall {:try_start_14b .. :try_end_175} :catchall_159

    throw v1
.end method


# virtual methods
.method public checkASKSTarget(I)[Ljava/lang/String;
    .registers 16
    .param p1, "typeo"    # I

    .line 717
    invoke-direct {p0}, Lcom/android/server/asks/ASKSManagerService;->enforceSystemOrRoot()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_14d

    .line 718
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " checkASKSTarget type:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AASA_ASKSManager"

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 720
    .local v0, "removedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 722
    .local v3, "bList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    invoke-direct {p0}, Lcom/android/server/asks/ASKSManagerService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/pm/PackageManagerInternal;->getPackageMap()Landroid/util/ArrayMap;

    move-result-object v4

    .line 724
    .local v4, "mPackages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    const/16 v5, 0x9

    invoke-direct {p0, v5, v3}, Lcom/android/server/asks/ASKSManagerService;->getASKSDataFromXML(ILjava/util/HashMap;)V

    .line 726
    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v5

    if-nez v5, :cond_3b

    .line 727
    return-object v1

    .line 729
    :cond_3b
    if-eqz v4, :cond_14d

    .line 731
    const/4 v5, 0x1

    .line 733
    .local v5, "isTarget":Z
    invoke-virtual {v4}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_46
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_10f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 735
    .local v7, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-eqz v7, :cond_10d

    .line 737
    const/4 v5, 0x1

    .line 739
    invoke-interface {v7}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->toAppInfoWithoutState()Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_60

    .line 740
    const/4 v5, 0x0

    .line 742
    :cond_60
    invoke-interface {v7}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->toAppInfoWithoutState()Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v8, v8, 0x8

    if-eqz v8, :cond_6b

    .line 743
    const/4 v5, 0x0

    .line 745
    :cond_6b
    invoke-interface {v7}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->toAppInfoWithoutState()Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/pm/ApplicationInfo;->isUpdatedSystemApp()Z

    move-result v8

    if-eqz v8, :cond_8f

    .line 746
    const/4 v5, 0x1

    .line 747
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "isUpdatedSystemApp:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v7}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    :cond_8f
    if-eqz v5, :cond_10d

    .line 752
    invoke-interface {v7}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/PackageParser$SigningDetails;

    move-result-object v9

    iget-object v9, v9, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    invoke-direct {p0, v8, v9}, Lcom/android/server/asks/ASKSManagerService;->isSignatureMatched(Ljava/lang/String;[Landroid/content/pm/Signature;)I

    move-result v8

    .line 754
    .local v8, "keyIndex":I
    const/4 v9, -0x1

    if-eq v8, v9, :cond_10d

    .line 756
    invoke-interface {v7}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/server/asks/ASKSManagerService;->getSHA256ForPkgName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 758
    .local v9, "pkgNameHash":Ljava/lang/String;
    invoke-virtual {v3, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_10d

    .line 760
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "checkDevice Target app :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v7}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " ::"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    invoke-interface {v7}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getBaseCodePath()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/server/asks/ASKSManagerService;->getApkFileHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 763
    .local v10, "pkgDigest":Ljava/lang/String;
    invoke-virtual {v3, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    .line 765
    .local v11, "bHashList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_10d

    invoke-interface {v7}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_10d

    .line 767
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v7}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " is in Blist"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v2, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    invoke-interface {v7}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 774
    .end local v7    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v8    # "keyIndex":I
    .end local v9    # "pkgNameHash":Ljava/lang/String;
    .end local v10    # "pkgDigest":Ljava/lang/String;
    .end local v11    # "bHashList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_10d
    goto/16 :goto_46

    .line 776
    :cond_10f
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-eqz v6, :cond_14d

    .line 778
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 779
    .local v1, "ret":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 780
    .local v6, "ii":I
    :goto_11c
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_14c

    .line 781
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    aput-object v7, v1, v6

    .line 782
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "return value["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "]:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v1, v6

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    add-int/lit8 v6, v6, 0x1

    goto :goto_11c

    .line 784
    :cond_14c
    return-object v1

    .line 789
    .end local v0    # "removedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v1    # "ret":[Ljava/lang/String;
    .end local v3    # "bList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v4    # "mPackages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    .end local v5    # "isTarget":Z
    .end local v6    # "ii":I
    :cond_14d
    return-object v1
.end method

.method public checkDeletableListForASKS()V
    .registers 18

    .line 658
    move-object/from16 v1, p0

    invoke-direct/range {p0 .. p0}, Lcom/android/server/asks/ASKSManagerService;->enforceSystemOrRoot()Z

    move-result v0

    const-string v2, "AASA_ASKSManager_DELETABLE"

    if-eqz v0, :cond_d6

    .line 660
    invoke-direct/range {p0 .. p0}, Lcom/android/server/asks/ASKSManagerService;->getTrustedToday()Ljava/lang/String;

    move-result-object v3

    .line 662
    .local v3, "trustedToday":Ljava/lang/String;
    iget-object v0, v1, Lcom/android/server/asks/ASKSManagerService;->mASKSStates:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/util/HashMap;

    .line 663
    .local v4, "clonedMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/asks/ASKSManagerService$ASKSState;>;"
    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/util/Map$Entry;

    .line 665
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/asks/ASKSManagerService$ASKSState;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/android/server/asks/ASKSManagerService$ASKSState;

    .line 666
    .local v7, "state":Lcom/android/server/asks/ASKSManagerService$ASKSState;
    invoke-virtual {v7}, Lcom/android/server/asks/ASKSManagerService$ASKSState;->getDeletable()Lcom/android/server/asks/ASKSManagerService$Deletable;

    move-result-object v0

    if-eqz v0, :cond_d3

    .line 668
    invoke-virtual {v7}, Lcom/android/server/asks/ASKSManagerService$ASKSState;->getDeletable()Lcom/android/server/asks/ASKSManagerService$Deletable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/asks/ASKSManagerService$Deletable;->getDateLimit()Ljava/lang/String;

    move-result-object v8

    .line 669
    .local v8, "dateLimit":Ljava/lang/String;
    if-eqz v3, :cond_d3

    if-eqz v8, :cond_d3

    .line 672
    :try_start_49
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    if-le v0, v9, :cond_cc

    .line 674
    invoke-direct/range {p0 .. p0}, Lcom/android/server/asks/ASKSManagerService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v0, v9}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v0

    move-object v9, v0

    .line 676
    .local v9, "p":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Lcom/android/server/asks/ASKSManagerService$ASKSState;->setDeletable(Lcom/android/server/asks/ASKSManagerService$Deletable;)V

    .line 677
    if-eqz v9, :cond_af

    invoke-interface {v9}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getBaseCodePath()Ljava/lang/String;

    move-result-object v0

    const-string v10, "/data"

    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0
    :try_end_72
    .catch Ljava/lang/NumberFormatException; {:try_start_49 .. :try_end_72} :catch_cd

    if-eqz v0, :cond_af

    .line 680
    const/4 v0, 0x4

    :try_start_75
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "a app deleted by the restricted policy. the date is expired ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 681
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v11

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Ljava/lang/String;

    const/4 v13, -0x1

    const/4 v14, 0x0

    iget-object v0, v1, Lcom/android/server/asks/ASKSManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v15

    const/16 v16, 0x0

    invoke-interface/range {v11 .. v16}, Landroid/content/pm/IPackageManager;->deletePackageAsUser(Ljava/lang/String;ILandroid/content/pm/IPackageDeleteObserver;II)V
    :try_end_ac
    .catch Landroid/os/RemoteException; {:try_start_75 .. :try_end_ac} :catch_ad
    .catch Ljava/lang/NumberFormatException; {:try_start_75 .. :try_end_ac} :catch_cd

    goto :goto_ae

    .line 682
    :catch_ad
    move-exception v0

    .line 683
    :goto_ae
    goto :goto_c9

    .line 686
    :cond_af
    :try_start_af
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "does not found delete target - "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    :goto_c9
    invoke-direct/range {p0 .. p0}, Lcom/android/server/asks/ASKSManagerService;->writeState()V
    :try_end_cc
    .catch Ljava/lang/NumberFormatException; {:try_start_af .. :try_end_cc} :catch_cd

    .line 692
    .end local v9    # "p":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :cond_cc
    goto :goto_d3

    .line 690
    :catch_cd
    move-exception v0

    .line 691
    .local v0, "ex":Ljava/lang/NumberFormatException;
    const-string v9, "NumberFormatException ::"

    invoke-static {v2, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    .end local v0    # "ex":Ljava/lang/NumberFormatException;
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/asks/ASKSManagerService$ASKSState;>;"
    .end local v7    # "state":Lcom/android/server/asks/ASKSManagerService$ASKSState;
    .end local v8    # "dateLimit":Ljava/lang/String;
    :cond_d3
    :goto_d3
    goto/16 :goto_1f

    .line 696
    .end local v3    # "trustedToday":Ljava/lang/String;
    .end local v4    # "clonedMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/asks/ASKSManagerService$ASKSState;>;"
    :cond_d5
    goto :goto_db

    .line 697
    :cond_d6
    const-string v0, "ERROR::: Unknown caller"

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    :goto_db
    return-void
.end method

.method public checkFollowingLegitimateWay(Ljava/lang/String;I)Z
    .registers 6
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "flags"    # I

    .line 641
    const-string v0, "Only the system can claim checkFollowingLegitimateWay"

    invoke-direct {p0, v0}, Lcom/android/server/asks/ASKSManagerService;->enforceSystemOrRoot(Ljava/lang/String;)V

    .line 643
    iget-object v0, p0, Lcom/android/server/asks/ASKSManagerService;->mSessions:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 645
    const/4 v0, 0x1

    return v0

    .line 647
    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " has not followed legitimate way"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ASKSManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    const/16 v0, 0x1c18

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WEIRD INSTALL ROUTE"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/asks/ASKSManagerService;->setSamsungAnalyticsLog(ILjava/lang/String;Ljava/lang/String;)V

    .line 650
    const/4 v0, 0x0

    return v0
.end method

.method public checkRestrictedPermission(Ljava/lang/String;Ljava/lang/String;)I
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permission"    # Ljava/lang/String;

    .line 525
    const/4 v0, 0x4

    .line 527
    .local v0, "DENIED_PERMISSION_BY_AASA":I
    const/4 v1, 0x0

    .line 529
    .local v1, "result":I
    iget-object v2, p0, Lcom/android/server/asks/ASKSManagerService;->mASKSStates:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/asks/ASKSManagerService$ASKSState;

    .line 531
    .local v2, "state":Lcom/android/server/asks/ASKSManagerService$ASKSState;
    if-nez v2, :cond_d

    return v1

    .line 533
    :cond_d
    invoke-virtual {v2}, Lcom/android/server/asks/ASKSManagerService$ASKSState;->getRestrict()Lcom/android/server/asks/ASKSManagerService$Restrict;

    move-result-object v3

    .line 535
    .local v3, "currentRestrictRule":Lcom/android/server/asks/ASKSManagerService$Restrict;
    if-eqz v3, :cond_3a

    .line 537
    invoke-virtual {v3}, Lcom/android/server/asks/ASKSManagerService$Restrict;->getDateLimit()Ljava/lang/String;

    move-result-object v4

    .line 538
    .local v4, "dateLimit":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/server/asks/ASKSManagerService;->getTrustedToday()Ljava/lang/String;

    move-result-object v5

    .line 540
    .local v5, "trustedToday":Ljava/lang/String;
    if-eqz v5, :cond_3a

    if-eqz v4, :cond_3a

    .line 542
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-le v6, v7, :cond_3a

    .line 544
    invoke-virtual {v3}, Lcom/android/server/asks/ASKSManagerService$Restrict;->getPermissionList()Ljava/util/ArrayList;

    move-result-object v6

    if-eqz v6, :cond_3a

    invoke-virtual {v3}, Lcom/android/server/asks/ASKSManagerService$Restrict;->getPermissionList()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3a

    .line 545
    const/4 v1, 0x4

    .line 551
    .end local v4    # "dateLimit":Ljava/lang/String;
    .end local v5    # "trustedToday":Ljava/lang/String;
    :cond_3a
    return v1
.end method

.method public clearASKSruleForRemovedPackage(Ljava/lang/String;)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 506
    const-string v0, "Only the system can claim clearASKSruleForRemovedPackage"

    invoke-direct {p0, v0}, Lcom/android/server/asks/ASKSManagerService;->enforceSystemOrRoot(Ljava/lang/String;)V

    .line 508
    iget-object v0, p0, Lcom/android/server/asks/ASKSManagerService;->mASKSStates:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/asks/ASKSManagerService$ASKSState;

    .line 509
    .local v0, "state":Lcom/android/server/asks/ASKSManagerService$ASKSState;
    const/4 v1, 0x0

    .line 511
    .local v1, "isEdit":Z
    if-eqz v0, :cond_16

    .line 512
    iget-object v2, p0, Lcom/android/server/asks/ASKSManagerService;->mASKSStates:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 513
    const/4 v1, 0x1

    .line 516
    :cond_16
    if-eqz v1, :cond_1b

    .line 517
    invoke-direct {p0}, Lcom/android/server/asks/ASKSManagerService;->writeState()V

    .line 518
    :cond_1b
    return-void
.end method

.method public getIMEIList()Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 605
    iget-object v0, p0, Lcom/android/server/asks/ASKSManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 606
    .local v0, "telephonyManager":Landroid/telephony/TelephonyManager;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 607
    .local v1, "imeiList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v2, "INVALID_IMEI"

    .line 609
    .local v2, "imei":Ljava/lang/String;
    if-eqz v0, :cond_53

    .line 610
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v3

    .line 612
    .local v3, "count":I
    const-string v4, "ASKSManager"

    if-lez v3, :cond_39

    .line 614
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1d
    if-ge v5, v3, :cond_38

    .line 616
    invoke-virtual {v0, v5}, Landroid/telephony/TelephonyManager;->getImei(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_35

    .line 617
    invoke-virtual {v0, v5}, Landroid/telephony/TelephonyManager;->getImei(I)Ljava/lang/String;

    move-result-object v2

    .line 618
    invoke-direct {p0, v2}, Lcom/android/server/asks/ASKSManagerService;->getSHA256ForPkgName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 619
    const-string v6, "ASKSI added list"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    :cond_35
    add-int/lit8 v5, v5, 0x1

    goto :goto_1d

    .end local v5    # "i":I
    :cond_38
    goto :goto_53

    .line 624
    :cond_39
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getImei()Ljava/lang/String;

    move-result-object v2

    .line 625
    if-nez v2, :cond_47

    .line 626
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    .line 627
    if-nez v2, :cond_47

    .line 628
    const-string v2, "INVALID_IMEI"

    .line 631
    :cond_47
    const-string v5, "ASKSI added list 2"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    invoke-direct {p0, v2}, Lcom/android/server/asks/ASKSManagerService;->getSHA256ForPkgName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 635
    .end local v3    # "count":I
    :cond_53
    :goto_53
    return-object v1
.end method

.method public getSEInfo(Ljava/lang/String;)[B
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;

    .line 557
    const-string v0, "Only the system can claim getSEInfo"

    invoke-direct {p0, v0}, Lcom/android/server/asks/ASKSManagerService;->enforceSystemOrRoot(Ljava/lang/String;)V

    .line 559
    const-string v0, "aasa_blocked"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 560
    .local v0, "AASA_BLOCKED":[B
    iget-object v1, p0, Lcom/android/server/asks/ASKSManagerService;->mASKSStates:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/asks/ASKSManagerService$ASKSState;

    .line 562
    .local v1, "state":Lcom/android/server/asks/ASKSManagerService$ASKSState;
    const/4 v2, 0x0

    if-eqz p1, :cond_61

    if-nez v1, :cond_19

    goto :goto_61

    .line 565
    :cond_19
    invoke-virtual {v1}, Lcom/android/server/asks/ASKSManagerService$ASKSState;->getRestrict()Lcom/android/server/asks/ASKSManagerService$Restrict;

    move-result-object v3

    .line 566
    .local v3, "currentRestrictRule":Lcom/android/server/asks/ASKSManagerService$Restrict;
    invoke-virtual {v1}, Lcom/android/server/asks/ASKSManagerService$ASKSState;->getEMMode()I

    move-result v4

    .line 569
    .local v4, "currentEMmode":I
    if-eqz v3, :cond_46

    invoke-virtual {v3}, Lcom/android/server/asks/ASKSManagerService$Restrict;->getType()Ljava/lang/String;

    move-result-object v5

    const-string v6, "DENY"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_46

    .line 571
    invoke-virtual {v3}, Lcom/android/server/asks/ASKSManagerService$Restrict;->getDateLimit()Ljava/lang/String;

    move-result-object v5

    .line 572
    .local v5, "dateLimit":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/server/asks/ASKSManagerService;->getTrustedToday()Ljava/lang/String;

    move-result-object v6

    .line 574
    .local v6, "trustedToday":Ljava/lang/String;
    if-eqz v6, :cond_46

    if-eqz v5, :cond_46

    .line 575
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    if-le v7, v8, :cond_46

    .line 576
    return-object v0

    .line 582
    .end local v5    # "dateLimit":Ljava/lang/String;
    .end local v6    # "trustedToday":Ljava/lang/String;
    :cond_46
    const/4 v5, -0x1

    if-eq v4, v5, :cond_60

    .line 584
    new-instance v5, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;

    iget-object v6, p0, Lcom/android/server/asks/ASKSManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;-><init>(Landroid/content/Context;)V

    .line 586
    .local v5, "emm":Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;
    invoke-virtual {v5}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->isConnected()Z

    move-result v6

    if-nez v6, :cond_57

    .line 587
    return-object v0

    .line 590
    :cond_57
    invoke-virtual {v5, v4}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->getStatus(I)I

    move-result v6

    .line 592
    .local v6, "status":I
    const/4 v7, 0x1

    if-ne v6, v7, :cond_5f

    .line 593
    return-object v2

    .line 595
    :cond_5f
    return-object v0

    .line 599
    .end local v5    # "emm":Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;
    .end local v6    # "status":I
    :cond_60
    return-object v2

    .line 563
    .end local v3    # "currentRestrictRule":Lcom/android/server/asks/ASKSManagerService$Restrict;
    .end local v4    # "currentEMmode":I
    :cond_61
    :goto_61
    return-object v2
.end method

.method public getUNvalueForASKS()Ljava/lang/String;
    .registers 4

    .line 703
    const-string v0, "Only the system can claim getUNvalueForASKS"

    invoke-direct {p0, v0}, Lcom/android/server/asks/ASKSManagerService;->enforceSystemOrRoot(Ljava/lang/String;)V

    .line 705
    iget-boolean v0, p0, Lcom/android/server/asks/ASKSManagerService;->DEBUG_MODE_FOR_DEVELOPMENT:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    return-object v1

    .line 707
    :cond_b
    const-string/jumbo v0, "ro.boot.em.status"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "0x1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 708
    const-string/jumbo v0, "ro.serialno"

    const-string/jumbo v1, "none"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 710
    :cond_25
    return-object v1
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 304
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/content/pm/IASKSManager$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_4} :catch_5

    return v0

    .line 305
    :catch_5
    move-exception v0

    .line 306
    .local v0, "e":Ljava/lang/RuntimeException;
    instance-of v1, v0, Ljava/lang/SecurityException;

    if-nez v1, :cond_15

    instance-of v1, v0, Ljava/lang/IllegalArgumentException;

    if-nez v1, :cond_15

    .line 307
    const-string v1, "ASKSManager"

    const-string v2, "ASKS Manager Crash"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 309
    :cond_15
    throw v0
.end method

.method public postASKSsetup(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 14
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "baseCodePath"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 371
    const-string v0, "Only the system can claim postASKSsetup"

    invoke-direct {p0, v0}, Lcom/android/server/asks/ASKSManagerService;->enforceSystemOrRoot(Ljava/lang/String;)V

    .line 373
    const/4 v0, 0x0

    .line 374
    .local v0, "session":Lcom/android/server/asks/ASKSManagerService$ASKSSession;
    const/4 v1, 0x0

    .line 375
    .local v1, "edit":Z
    const/4 v2, 0x0

    .line 377
    .local v2, "isNotMultiUser":Z
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    const/4 v4, 0x1

    if-ne p3, v3, :cond_15

    move v3, v4

    goto :goto_16

    :cond_15
    const/4 v3, 0x0

    :goto_16
    move v2, v3

    .line 379
    iget-object v3, p0, Lcom/android/server/asks/ASKSManagerService;->mSessions:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a0

    .line 381
    iget-object v3, p0, Lcom/android/server/asks/ASKSManagerService;->mSessions:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;

    .line 383
    invoke-virtual {v0}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->getRufsContainer()Lcom/android/server/asks/RUFSContainer;

    move-result-object v3

    if-eqz v3, :cond_d1

    .line 385
    invoke-virtual {v0}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->getRufsContainer()Lcom/android/server/asks/RUFSContainer;

    move-result-object v3

    .line 386
    .local v3, "rufsContainer":Lcom/android/server/asks/RUFSContainer;
    invoke-virtual {v3}, Lcom/android/server/asks/RUFSContainer;->getHasRUFSToken()Z

    move-result v5

    if-eqz v5, :cond_d1

    .line 387
    new-instance v5, Lcom/android/server/asks/RuleUpdateForSecurity;

    invoke-direct {v5, v3}, Lcom/android/server/asks/RuleUpdateForSecurity;-><init>(Lcom/android/server/asks/RUFSContainer;)V

    .line 389
    .local v5, "rufs":Lcom/android/server/asks/RuleUpdateForSecurity;
    const-string/jumbo v6, "security.ASKS.rufs_enable"

    invoke-static {v6, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    const-string v7, "AASA_ASKSManager_RUFS"

    if-ne v6, v4, :cond_cc

    .line 390
    const-string v6, "TRY........."

    invoke-static {v7, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    const-string/jumbo v6, "security.ASKS.policy_version"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/android/server/asks/RuleUpdateForSecurity;->isUpdatePolicy(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_d1

    .line 392
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "!!path:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/asks/RUFSContainer;->getPolicyPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    invoke-virtual {v5, p2}, Lcom/android/server/asks/RuleUpdateForSecurity;->updatePolicy(Ljava/lang/String;)Z

    move-result v8

    if-ne v8, v4, :cond_d1

    .line 395
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "policy update from "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    invoke-virtual {v3}, Lcom/android/server/asks/RUFSContainer;->getPolicyVersion()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/android/server/asks/ASKSManagerService;->mASKSPolicyVersion:Ljava/lang/String;

    .line 398
    invoke-static {v6, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    :try_start_9a
    const-string/jumbo v4, "ro.product.model"

    const-string/jumbo v8, "null"

    invoke-static {v4, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 404
    .local v4, "product_model":Ljava/lang/String;
    sget-object v8, Lcom/android/server/asks/ASKSManagerService;->mASKSPolicyVersion:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const-string v9, "RUFS_UPDATE"

    invoke-direct {p0, v8, v4, v9}, Lcom/android/server/asks/ASKSManagerService;->setSamsungAnalyticsLog(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_af
    .catch Ljava/lang/NumberFormatException; {:try_start_9a .. :try_end_af} :catch_b0

    .line 406
    .end local v4    # "product_model":Ljava/lang/String;
    goto :goto_b1

    .line 405
    :catch_b0
    move-exception v4

    .line 407
    :goto_b1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "policy update to   "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    const/4 v1, 0x1

    goto :goto_d1

    .line 412
    :cond_cc
    const-string v4, "RUFS is disabled"

    invoke-static {v7, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    .end local v3    # "rufsContainer":Lcom/android/server/asks/RUFSContainer;
    .end local v5    # "rufs":Lcom/android/server/asks/RuleUpdateForSecurity;
    :cond_d1
    :goto_d1
    invoke-direct {p0, v0}, Lcom/android/server/asks/ASKSManagerService;->updateRestrictRule(Lcom/android/server/asks/ASKSManagerService$ASKSSession;)Z

    move-result v3

    if-eqz v3, :cond_d8

    .line 418
    const/4 v1, 0x1

    .line 421
    :cond_d8
    iget-object v3, p0, Lcom/android/server/asks/ASKSManagerService;->mASKSStates:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_187

    if-eqz v2, :cond_187

    .line 424
    iget-object v3, p0, Lcom/android/server/asks/ASKSManagerService;->mASKSStates:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/asks/ASKSManagerService$ASKSState;

    .line 426
    .local v3, "asksState":Lcom/android/server/asks/ASKSManagerService$ASKSState;
    invoke-virtual {v0}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->getRestrict()Lcom/android/server/asks/ASKSManagerService$Restrict;

    move-result-object v4

    .line 427
    .local v4, "newRestrictRule":Lcom/android/server/asks/ASKSManagerService$Restrict;
    invoke-virtual {v3}, Lcom/android/server/asks/ASKSManagerService$ASKSState;->getRestrict()Lcom/android/server/asks/ASKSManagerService$Restrict;

    move-result-object v5

    .line 430
    .local v5, "currentRestrictRule":Lcom/android/server/asks/ASKSManagerService$Restrict;
    if-eqz v5, :cond_12e

    .line 433
    :try_start_f4
    const-string v6, "Policy"

    invoke-virtual {v5}, Lcom/android/server/asks/ASKSManagerService$Restrict;->getFrom()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_112

    .line 434
    invoke-virtual {v0}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->getVersion()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5}, Lcom/android/server/asks/ASKSManagerService$Restrict;->getVersion()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-gt v6, v7, :cond_120

    :cond_112
    if-eqz v4, :cond_12d

    const-string v6, "Token"

    .line 435
    invoke-virtual {v4}, Lcom/android/server/asks/ASKSManagerService$Restrict;->getFrom()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12d

    .line 436
    :cond_120
    const-string v6, "AASA_ASKSManager_RESTRICTED"

    const-string v7, "Set restricted rule from Token."

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    invoke-virtual {v3, v4}, Lcom/android/server/asks/ASKSManagerService$ASKSState;->setRestrict(Lcom/android/server/asks/ASKSManagerService$Restrict;)V
    :try_end_12a
    .catch Ljava/lang/NumberFormatException; {:try_start_f4 .. :try_end_12a} :catch_12c

    .line 438
    const/4 v1, 0x1

    goto :goto_12d

    .line 440
    :catch_12c
    move-exception v6

    .line 441
    :cond_12d
    :goto_12d
    goto :goto_132

    .line 445
    :cond_12e
    invoke-virtual {v3, v4}, Lcom/android/server/asks/ASKSManagerService$ASKSState;->setRestrict(Lcom/android/server/asks/ASKSManagerService$Restrict;)V

    .line 446
    const/4 v1, 0x1

    .line 450
    :goto_132
    invoke-virtual {v0}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->getDeletable()Lcom/android/server/asks/ASKSManagerService$Deletable;

    move-result-object v6

    if-eqz v6, :cond_16c

    .line 452
    invoke-virtual {v3}, Lcom/android/server/asks/ASKSManagerService$ASKSState;->getDeletable()Lcom/android/server/asks/ASKSManagerService$Deletable;

    move-result-object v6

    if-eqz v6, :cond_163

    .line 454
    invoke-virtual {v0}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->getDeletable()Lcom/android/server/asks/ASKSManagerService$Deletable;

    move-result-object v6

    .line 455
    .local v6, "fromSession":Lcom/android/server/asks/ASKSManagerService$Deletable;
    invoke-virtual {v3}, Lcom/android/server/asks/ASKSManagerService$ASKSState;->getDeletable()Lcom/android/server/asks/ASKSManagerService$Deletable;

    move-result-object v7

    .line 458
    .local v7, "fromState":Lcom/android/server/asks/ASKSManagerService$Deletable;
    :try_start_146
    invoke-virtual {v6}, Lcom/android/server/asks/ASKSManagerService$Deletable;->getVersion()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7}, Lcom/android/server/asks/ASKSManagerService$Deletable;->getVersion()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    if-lt v8, v9, :cond_160

    .line 459
    invoke-virtual {v0}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->getDeletable()Lcom/android/server/asks/ASKSManagerService$Deletable;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/android/server/asks/ASKSManagerService$ASKSState;->setDeletable(Lcom/android/server/asks/ASKSManagerService$Deletable;)V
    :try_end_15f
    .catch Ljava/lang/NumberFormatException; {:try_start_146 .. :try_end_15f} :catch_161

    .line 460
    const/4 v1, 0x1

    .line 463
    :cond_160
    goto :goto_162

    .line 462
    :catch_161
    move-exception v8

    .line 464
    .end local v6    # "fromSession":Lcom/android/server/asks/ASKSManagerService$Deletable;
    .end local v7    # "fromState":Lcom/android/server/asks/ASKSManagerService$Deletable;
    :goto_162
    goto :goto_177

    .line 465
    :cond_163
    invoke-virtual {v0}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->getDeletable()Lcom/android/server/asks/ASKSManagerService$Deletable;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/android/server/asks/ASKSManagerService$ASKSState;->setDeletable(Lcom/android/server/asks/ASKSManagerService$Deletable;)V

    .line 466
    const/4 v1, 0x1

    goto :goto_177

    .line 470
    :cond_16c
    invoke-virtual {v3}, Lcom/android/server/asks/ASKSManagerService$ASKSState;->getDeletable()Lcom/android/server/asks/ASKSManagerService$Deletable;

    move-result-object v6

    if-eqz v6, :cond_177

    .line 472
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Lcom/android/server/asks/ASKSManagerService$ASKSState;->setDeletable(Lcom/android/server/asks/ASKSManagerService$Deletable;)V

    .line 473
    const/4 v1, 0x1

    .line 478
    :cond_177
    :goto_177
    invoke-virtual {v0}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->getEMMode()I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_186

    .line 479
    invoke-virtual {v0}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->getEMMode()I

    move-result v6

    invoke-virtual {v3, v6}, Lcom/android/server/asks/ASKSManagerService$ASKSState;->setEMMode(I)V

    .line 480
    const/4 v1, 0x1

    .line 482
    .end local v3    # "asksState":Lcom/android/server/asks/ASKSManagerService$ASKSState;
    .end local v4    # "newRestrictRule":Lcom/android/server/asks/ASKSManagerService$Restrict;
    .end local v5    # "currentRestrictRule":Lcom/android/server/asks/ASKSManagerService$Restrict;
    :cond_186
    goto :goto_1a0

    .line 485
    :cond_187
    invoke-virtual {v0}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->isASKSTarget()Z

    move-result v3

    if-eqz v3, :cond_1a0

    invoke-virtual {v0}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->hasValue()Z

    move-result v3

    if-eqz v3, :cond_1a0

    if-eqz v2, :cond_1a0

    .line 486
    new-instance v3, Lcom/android/server/asks/ASKSManagerService$ASKSState;

    invoke-direct {v3, v0}, Lcom/android/server/asks/ASKSManagerService$ASKSState;-><init>(Lcom/android/server/asks/ASKSManagerService$ASKSSession;)V

    .line 488
    .restart local v3    # "asksState":Lcom/android/server/asks/ASKSManagerService$ASKSState;
    iget-object v4, p0, Lcom/android/server/asks/ASKSManagerService;->mASKSStates:Ljava/util/HashMap;

    invoke-virtual {v4, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    const/4 v1, 0x1

    .line 494
    .end local v3    # "asksState":Lcom/android/server/asks/ASKSManagerService$ASKSState;
    :cond_1a0
    :goto_1a0
    invoke-direct {p0, v0, p1}, Lcom/android/server/asks/ASKSManagerService;->closeSession(Lcom/android/server/asks/ASKSManagerService$ASKSSession;Ljava/lang/String;)V

    .line 496
    if-eqz v1, :cond_1ab

    .line 497
    invoke-direct {p0}, Lcom/android/server/asks/ASKSManagerService;->writeState()V

    .line 498
    invoke-direct {p0}, Lcom/android/server/asks/ASKSManagerService;->updateRestrictedTargetPackages()V

    .line 500
    :cond_1ab
    invoke-virtual {p0}, Lcom/android/server/asks/ASKSManagerService;->checkDeletableListForASKS()V

    .line 501
    return-void
.end method

.method public setTrustTimebyStatusChanged()V
    .registers 9

    .line 3187
    const-string v0, "AASA_ASKSManager_SECURETIME"

    const-string/jumbo v1, "setTrustTimebyStatusChanged : "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3188
    iget-object v1, p0, Lcom/android/server/asks/ASKSManagerService;->mContext:Landroid/content/Context;

    if-nez v1, :cond_13

    .line 3189
    const-string/jumbo v1, "mContext is null. "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3190
    return-void

    .line 3192
    :cond_13
    invoke-direct {p0}, Lcom/android/server/asks/ASKSManagerService;->hasTrustedTime()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 3193
    invoke-direct {p0}, Lcom/android/server/asks/ASKSManagerService;->getTrustedFile()[Ljava/lang/String;

    move-result-object v0

    .line 3194
    .local v0, "timelist":[Ljava/lang/String;
    if-eqz v0, :cond_32

    array-length v1, v0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_32

    .line 3195
    const/4 v1, 0x0

    aget-object v1, v0, v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 3196
    invoke-direct {p0}, Lcom/android/server/asks/ASKSManagerService;->updateTrustedFile()V

    .line 3197
    return-void

    .line 3202
    .end local v0    # "timelist":[Ljava/lang/String;
    :cond_32
    iget-object v0, p0, Lcom/android/server/asks/ASKSManagerService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/server/asks/ASKSManagerService;->checkNetworkConnection(Landroid/content/Context;)I

    move-result v0

    .line 3203
    .local v0, "networkStatus":I
    iget-object v1, p0, Lcom/android/server/asks/ASKSManagerService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/android/server/asks/ASKSManagerService;->isAutoTimeEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_50

    if-lez v0, :cond_50

    .line 3205
    const/4 v3, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/asks/ASKSManagerService;->setTrustedFile(IJJ)V

    goto :goto_53

    .line 3210
    :cond_50
    invoke-direct {p0}, Lcom/android/server/asks/ASKSManagerService;->updateTrustedFile()V

    .line 3212
    :goto_53
    return-void
.end method

.method public systemReady()V
    .registers 4

    .line 289
    const-string v0, "Only the system can claim the system is ready"

    invoke-direct {p0, v0}, Lcom/android/server/asks/ASKSManagerService;->enforceSystemOrRoot(Ljava/lang/String;)V

    .line 291
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/asks/ASKSManagerService;->mSystemReady:Z

    .line 293
    invoke-virtual {p0}, Lcom/android/server/asks/ASKSManagerService;->checkDeletableListForASKS()V

    .line 295
    iget-object v1, p0, Lcom/android/server/asks/ASKSManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "security_policy_update"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1b

    goto :goto_1c

    :cond_1b
    const/4 v0, 0x0

    .line 297
    .local v0, "Rufs_enabled":Z
    :goto_1c
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "security.ASKS.rufs_enable"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    return-void
.end method

.method public verifyASKStokenForPackage(Ljava/lang/String;Ljava/lang/String;I[Landroid/content/pm/Signature;Ljava/lang/String;Z)I
    .registers 24
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "baseCodePath"    # Ljava/lang/String;
    .param p3, "versionCode"    # I
    .param p4, "signatures"    # [Landroid/content/pm/Signature;
    .param p5, "installerPackageName"    # Ljava/lang/String;
    .param p6, "isSystemApp"    # Z

    .line 321
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p4

    const-string v0, "Only the system can claim verifyASKStokenForPackage"

    invoke-direct {v9, v0}, Lcom/android/server/asks/ASKSManagerService;->enforceSystemOrRoot(Ljava/lang/String;)V

    .line 323
    const/4 v12, -0x1

    .line 324
    .local v12, "returnASKS":I
    const/4 v1, -0x1

    .line 326
    .local v1, "keyIndex":I
    const/4 v2, 0x0

    .line 328
    .local v2, "pkgDigest":Ljava/lang/String;
    iget-boolean v0, v9, Lcom/android/server/asks/ASKSManagerService;->isFirstTime:Z

    if-eqz v0, :cond_1a

    .line 329
    const/4 v0, 0x0

    iput-boolean v0, v9, Lcom/android/server/asks/ASKSManagerService;->isFirstTime:Z

    .line 330
    iget-object v0, v9, Lcom/android/server/asks/ASKSManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v9, v0}, Lcom/android/server/asks/ASKSManagerService;->readyForBooting(Landroid/content/Context;)V

    .line 333
    :cond_1a
    const/4 v0, 0x0

    const/16 v3, 0x13

    invoke-direct {v9, v3, v10, v0}, Lcom/android/server/asks/ASKSManagerService;->checkListForASKS(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v13, -0x1

    if-eq v0, v13, :cond_37

    .line 336
    move-object/from16 v14, p2

    :try_start_26
    invoke-direct {v9, v14}, Lcom/android/server/asks/ASKSManagerService;->getAdvancedHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_2a} :catch_2c

    move-object v2, v0

    .line 338
    goto :goto_2d

    .line 337
    :catch_2c
    move-exception v0

    .line 340
    :goto_2d
    invoke-direct {v9, v3, v10, v2}, Lcom/android/server/asks/ASKSManagerService;->checkListForASKS(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eq v0, v13, :cond_35

    .line 342
    const/4 v0, -0x7

    .line 343
    .end local v12    # "returnASKS":I
    .local v0, "returnASKS":I
    return v0

    .line 340
    .end local v0    # "returnASKS":I
    .restart local v12    # "returnASKS":I
    :cond_35
    move-object v0, v2

    goto :goto_3a

    .line 333
    :cond_37
    move-object/from16 v14, p2

    move-object v0, v2

    .line 347
    .end local v2    # "pkgDigest":Ljava/lang/String;
    .local v0, "pkgDigest":Ljava/lang/String;
    :goto_3a
    invoke-direct/range {p0 .. p1}, Lcom/android/server/asks/ASKSManagerService;->openSession(Ljava/lang/String;)Lcom/android/server/asks/ASKSManagerService$ASKSSession;

    move-result-object v15

    .line 349
    .local v15, "session":Lcom/android/server/asks/ASKSManagerService$ASKSSession;
    if-eqz v0, :cond_43

    .line 350
    invoke-virtual {v15, v0}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->setPkgDigest(Ljava/lang/String;)V

    .line 353
    :cond_43
    invoke-virtual {v15, v11}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->setSignature([Landroid/content/pm/Signature;)V

    .line 354
    invoke-direct {v9, v10, v11}, Lcom/android/server/asks/ASKSManagerService;->isSignatureMatched(Ljava/lang/String;[Landroid/content/pm/Signature;)I

    move-result v8

    .line 356
    .end local v1    # "keyIndex":I
    .local v8, "keyIndex":I
    if-eq v8, v13, :cond_6a

    .line 357
    const/4 v1, 0x1

    invoke-virtual {v15, v1}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->setASKSTarget(Z)V

    .line 358
    move-object/from16 v1, p0

    move-object v2, v15

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p5

    move v7, v8

    move/from16 v16, v8

    .end local v8    # "keyIndex":I
    .local v16, "keyIndex":I
    move/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/android/server/asks/ASKSManagerService;->parsePackageForASKS(Lcom/android/server/asks/ASKSManagerService$ASKSSession;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IZ)I

    move-result v12

    .line 361
    if-eq v12, v13, :cond_6c

    .line 362
    invoke-direct {v9, v15, v10}, Lcom/android/server/asks/ASKSManagerService;->closeSession(Lcom/android/server/asks/ASKSManagerService$ASKSSession;Ljava/lang/String;)V

    goto :goto_6c

    .line 356
    .end local v16    # "keyIndex":I
    .restart local v8    # "keyIndex":I
    :cond_6a
    move/from16 v16, v8

    .line 365
    .end local v8    # "keyIndex":I
    .restart local v16    # "keyIndex":I
    :cond_6c
    :goto_6c
    return v12
.end method
