.class public Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;
.super Lcom/android/server/backup/fullbackup/FullBackupTask;
.source "PerformAdbBackupTask.java"

# interfaces
.implements Lcom/android/server/backup/BackupRestoreTask;


# static fields
.field private static mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;


# instance fields
.field private final mAllApps:Z

.field private final mCompress:Z

.field private final mCurrentOpToken:I

.field private final mCurrentPassword:Ljava/lang/String;

.field private mCurrentTarget:Landroid/content/pm/PackageInfo;

.field private final mDoWidgets:Z

.field private final mEncryptPassword:Ljava/lang/String;

.field mExtraFlag:I

.field private final mIncludeApks:Z

.field private final mIncludeObbs:Z

.field private final mIncludeShared:Z

.field private final mIncludeSystem:Z

.field private final mKeyValue:Z

.field private final mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mOutputFile:Landroid/os/ParcelFileDescriptor;

.field private final mPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mPrivilegeApp:Z

.field private final mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/backup/UserBackupManagerService;Landroid/os/ParcelFileDescriptor;Landroid/app/backup/IFullBackupRestoreObserver;ZZZZLjava/lang/String;Ljava/lang/String;ZZZZ[Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicBoolean;ZI)V
    .registers 35
    .param p1, "backupManagerService"    # Lcom/android/server/backup/UserBackupManagerService;
    .param p2, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "observer"    # Landroid/app/backup/IFullBackupRestoreObserver;
    .param p4, "includeApks"    # Z
    .param p5, "includeObbs"    # Z
    .param p6, "includeShared"    # Z
    .param p7, "doWidgets"    # Z
    .param p8, "curPassword"    # Ljava/lang/String;
    .param p9, "encryptPassword"    # Ljava/lang/String;
    .param p10, "doAllApps"    # Z
    .param p11, "doSystem"    # Z
    .param p12, "doCompress"    # Z
    .param p13, "doKeyValue"    # Z
    .param p14, "packages"    # [Ljava/lang/String;
    .param p15, "latch"    # Ljava/util/concurrent/atomic/AtomicBoolean;
    .param p16, "privilegeApp"    # Z
    .param p17, "extraFlag"    # I

    .line 103
    move-object/from16 v0, p0

    move-object/from16 v1, p8

    move-object/from16 v2, p9

    move-object/from16 v3, p3

    invoke-direct {v0, v3}, Lcom/android/server/backup/fullbackup/FullBackupTask;-><init>(Landroid/app/backup/IFullBackupRestoreObserver;)V

    .line 104
    move-object/from16 v4, p1

    iput-object v4, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 105
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/backup/UserBackupManagerService;->generateRandomIntegerToken()I

    move-result v5

    iput v5, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mCurrentOpToken:I

    .line 106
    move-object/from16 v5, p15

    iput-object v5, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 108
    move-object/from16 v6, p2

    iput-object v6, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    .line 109
    move/from16 v7, p4

    iput-boolean v7, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mIncludeApks:Z

    .line 110
    move/from16 v8, p5

    iput-boolean v8, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mIncludeObbs:Z

    .line 111
    move/from16 v9, p6

    iput-boolean v9, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mIncludeShared:Z

    .line 112
    move/from16 v10, p7

    iput-boolean v10, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mDoWidgets:Z

    .line 113
    move/from16 v11, p10

    iput-boolean v11, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mAllApps:Z

    .line 114
    move/from16 v12, p11

    iput-boolean v12, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mIncludeSystem:Z

    .line 115
    if-nez p14, :cond_3d

    .line 116
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    goto :goto_46

    .line 117
    :cond_3d
    new-instance v13, Ljava/util/ArrayList;

    invoke-static/range {p14 .. p14}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_46
    iput-object v13, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mPackages:Ljava/util/ArrayList;

    .line 118
    iput-object v1, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mCurrentPassword:Ljava/lang/String;

    .line 123
    if-eqz v2, :cond_58

    const-string v13, ""

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_55

    goto :goto_58

    .line 126
    :cond_55
    iput-object v2, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mEncryptPassword:Ljava/lang/String;

    goto :goto_5a

    .line 124
    :cond_58
    :goto_58
    iput-object v1, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mEncryptPassword:Ljava/lang/String;

    .line 131
    :goto_5a
    move/from16 v13, p12

    iput-boolean v13, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mCompress:Z

    .line 132
    move/from16 v14, p13

    iput-boolean v14, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mKeyValue:Z

    .line 134
    move/from16 v15, p16

    iput-boolean v15, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mPrivilegeApp:Z

    .line 135
    move/from16 v1, p17

    iput v1, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mExtraFlag:I

    .line 139
    invoke-static {}, Lcom/android/server/backup/UserBackupManagerService;->isYuvaSupported()Z

    move-result v16

    if-eqz v16, :cond_7d

    .line 140
    const-string v0, "BackupManagerService"

    const-string v1, "Backup Manager Yuva is Supported"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    invoke-static {}, Lcom/android/server/backup/BackupManagerYuva;->getInstanceBackupYuva()Lcom/android/server/backup/BackupManagerYuva;

    move-result-object v0

    sput-object v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    .line 144
    :cond_7d
    return-void
.end method

.method private addPackagesToSet(Ljava/util/TreeMap;Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageInfo;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 147
    .local p1, "set":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;"
    .local p2, "pkgNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_44

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 148
    .local v1, "pkgName":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_43

    .line 150
    :try_start_16
    iget-object v2, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v2}, Lcom/android/server/backup/UserBackupManagerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/high16 v3, 0x8000000

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 153
    .local v2, "info":Landroid/content/pm/PackageInfo;
    invoke-virtual {p1, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_25
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_16 .. :try_end_25} :catch_27

    .line 156
    nop

    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    goto :goto_43

    .line 154
    :catch_27
    move-exception v2

    .line 155
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", skipping"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BackupManagerService"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    .end local v1    # "pkgName":Ljava/lang/String;
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_43
    :goto_43
    goto :goto_4

    .line 159
    :cond_44
    return-void
.end method

.method private emitAesBackupHeader(Ljava/lang/StringBuilder;Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .registers 20
    .param p1, "headerbuf"    # Ljava/lang/StringBuilder;
    .param p2, "ofstream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 164
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 165
    const/16 v3, 0x200

    invoke-virtual {v2, v3}, Lcom/android/server/backup/UserBackupManagerService;->randomBytes(I)[B

    move-result-object v2

    .line 166
    .local v2, "newUserSalt":[B
    iget-object v4, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mEncryptPassword:Ljava/lang/String;

    .line 167
    const-string v5, "PBKDF2WithHmacSHA1"

    const/16 v6, 0x2710

    invoke-static {v5, v4, v2, v6}, Lcom/android/server/backup/utils/PasswordUtils;->buildPasswordKey(Ljava/lang/String;Ljava/lang/String;[BI)Ljavax/crypto/SecretKey;

    move-result-object v4

    .line 172
    .local v4, "userKey":Ljavax/crypto/SecretKey;
    const/16 v7, 0x20

    new-array v7, v7, [B

    .line 173
    .local v7, "masterPw":[B
    iget-object v8, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v8}, Lcom/android/server/backup/UserBackupManagerService;->getRng()Ljava/security/SecureRandom;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 174
    iget-object v8, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 175
    invoke-virtual {v8, v3}, Lcom/android/server/backup/UserBackupManagerService;->randomBytes(I)[B

    move-result-object v3

    .line 178
    .local v3, "checksumSalt":[B
    const-string v8, "AES/CBC/PKCS5Padding"

    invoke-static {v8}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v9

    .line 179
    .local v9, "c":Ljavax/crypto/Cipher;
    new-instance v10, Ljavax/crypto/spec/SecretKeySpec;

    const-string v11, "AES"

    invoke-direct {v10, v7, v11}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 180
    .local v10, "masterKeySpec":Ljavax/crypto/spec/SecretKeySpec;
    const/4 v11, 0x1

    invoke-virtual {v9, v11, v10}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 181
    new-instance v12, Ljavax/crypto/CipherOutputStream;

    move-object/from16 v13, p2

    invoke-direct {v12, v13, v9}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    .line 184
    .local v12, "finalOutput":Ljava/io/OutputStream;
    const-string v14, "AES-256"

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    const/16 v14, 0xa

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 187
    invoke-static {v2}, Lcom/android/server/backup/utils/PasswordUtils;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 190
    invoke-static {v3}, Lcom/android/server/backup/utils/PasswordUtils;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 193
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 194
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 197
    invoke-static {v8}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v8

    .line 198
    .local v8, "mkC":Ljavax/crypto/Cipher;
    invoke-virtual {v8, v11, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 200
    invoke-virtual {v8}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object v11

    .line 201
    .local v11, "IV":[B
    invoke-static {v11}, Lcom/android/server/backup/utils/PasswordUtils;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 214
    invoke-virtual {v9}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object v11

    .line 215
    invoke-virtual {v10}, Ljavax/crypto/spec/SecretKeySpec;->getEncoded()[B

    move-result-object v15

    .line 216
    .local v15, "mk":[B
    nop

    .line 218
    invoke-virtual {v10}, Ljavax/crypto/spec/SecretKeySpec;->getEncoded()[B

    move-result-object v14

    .line 217
    invoke-static {v5, v14, v3, v6}, Lcom/android/server/backup/utils/PasswordUtils;->makeKeyChecksum(Ljava/lang/String;[B[BI)[B

    move-result-object v5

    .line 221
    .local v5, "checksum":[B
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    array-length v14, v11

    array-length v0, v15

    add-int/2addr v14, v0

    array-length v0, v5

    add-int/2addr v14, v0

    add-int/lit8 v14, v14, 0x3

    invoke-direct {v6, v14}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    move-object v0, v6

    .line 223
    .local v0, "blob":Ljava/io/ByteArrayOutputStream;
    new-instance v6, Ljava/io/DataOutputStream;

    invoke-direct {v6, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 224
    .local v6, "mkOut":Ljava/io/DataOutputStream;
    array-length v14, v11

    invoke-virtual {v6, v14}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 225
    invoke-virtual {v6, v11}, Ljava/io/DataOutputStream;->write([B)V

    .line 226
    array-length v14, v15

    invoke-virtual {v6, v14}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 227
    invoke-virtual {v6, v15}, Ljava/io/DataOutputStream;->write([B)V

    .line 228
    array-length v14, v5

    invoke-virtual {v6, v14}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 229
    invoke-virtual {v6, v5}, Ljava/io/DataOutputStream;->write([B)V

    .line 230
    invoke-virtual {v6}, Ljava/io/DataOutputStream;->flush()V

    .line 231
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v14

    invoke-virtual {v8, v14}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v14

    .line 232
    .local v14, "encryptedMk":[B
    move-object/from16 v16, v0

    .end local v0    # "blob":Ljava/io/ByteArrayOutputStream;
    .local v16, "blob":Ljava/io/ByteArrayOutputStream;
    invoke-static {v14}, Lcom/android/server/backup/utils/PasswordUtils;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 235
    return-object v12
.end method

.method private finalizeBackup(Ljava/io/OutputStream;)V
    .registers 5
    .param p1, "out"    # Ljava/io/OutputStream;

    .line 241
    const/16 v0, 0x400

    :try_start_2
    new-array v0, v0, [B

    .line 242
    .local v0, "eof":[B
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_7} :catch_8

    .line 245
    .end local v0    # "eof":[B
    goto :goto_10

    .line 243
    :catch_8
    move-exception v0

    .line 244
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "BackupManagerService"

    const-string v2, "Error attempting to finalize backup stream"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    .end local v0    # "e":Ljava/io/IOException;
    :goto_10
    return-void
.end method


# virtual methods
.method public execute()V
    .registers 1

    .line 550
    return-void
.end method

.method public handleCancel(Z)V
    .registers 5
    .param p1, "cancelAll"    # Z

    .line 559
    iget-object v0, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mCurrentTarget:Landroid/content/pm/PackageInfo;

    .line 561
    .local v0, "target":Landroid/content/pm/PackageInfo;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adb backup cancel of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BackupManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    if-eqz v0, :cond_23

    .line 564
    iget-object v1, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v2, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mCurrentTarget:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v2}, Lcom/android/server/backup/UserBackupManagerService;->tearDownAgentAndKill(Landroid/content/pm/ApplicationInfo;)V

    .line 566
    :cond_23
    iget-object v1, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget v2, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mCurrentOpToken:I

    invoke-virtual {v1, v2}, Lcom/android/server/backup/UserBackupManagerService;->removeOperation(I)V

    .line 567
    return-void
.end method

.method public operationComplete(J)V
    .registers 3
    .param p1, "result"    # J

    .line 555
    return-void
.end method

.method public run()V
    .registers 37

    .line 250
    move-object/from16 v14, p0

    iget-boolean v0, v14, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mKeyValue:Z

    if-eqz v0, :cond_9

    const-string v0, ", including key-value backups"

    goto :goto_b

    :cond_9
    const-string v0, ""

    :goto_b
    move-object v15, v0

    .line 251
    .local v15, "includeKeyValue":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--- Performing adb backup"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ---"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BackupManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    move-object v13, v0

    .line 254
    .local v13, "packagesToBackup":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;"
    new-instance v0, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

    iget-object v1, v14, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-direct {v0, v1}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;-><init>(Lcom/android/server/backup/UserBackupManagerService;)V

    move-object v12, v0

    .line 256
    .local v12, "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    invoke-virtual {v12}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->establish()V

    .line 258
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->sendStartBackup()V

    .line 260
    sget-object v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    const/4 v11, 0x0

    if-eqz v0, :cond_4d

    iget-object v1, v14, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mPackages:Ljava/util/ArrayList;

    if-eqz v1, :cond_4d

    .line 261
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerYuva;->sendStartBackupCallback(Ljava/lang/String;)V

    .line 264
    :cond_4d
    iget-object v0, v14, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    .line 267
    .local v10, "pm":Landroid/content/pm/PackageManager;
    iget-boolean v0, v14, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mAllApps:Z

    const/4 v8, 0x1

    if-eqz v0, :cond_7e

    .line 268
    const/high16 v0, 0x8000000

    invoke-virtual {v10, v0}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    .line 270
    .local v0, "allPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5f
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_7e

    .line 271
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 273
    .local v2, "pkg":Landroid/content/pm/PackageInfo;
    iget-boolean v3, v14, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mIncludeSystem:Z

    if-nez v3, :cond_76

    iget-object v3, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v3, v8

    if-nez v3, :cond_7b

    .line 275
    :cond_76
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v3, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    .end local v2    # "pkg":Landroid/content/pm/PackageInfo;
    :cond_7b
    add-int/lit8 v1, v1, 0x1

    goto :goto_5f

    .line 282
    .end local v0    # "allPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v1    # "i":I
    :cond_7e
    iget-boolean v0, v14, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mDoWidgets:Z

    if-eqz v0, :cond_8c

    .line 284
    nop

    .line 285
    invoke-static {v11}, Lcom/android/server/AppWidgetBackupBridge;->getWidgetParticipants(I)Ljava/util/List;

    move-result-object v0

    .line 286
    .local v0, "pkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_8c

    .line 297
    invoke-direct {v14, v13, v0}, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->addPackagesToSet(Ljava/util/TreeMap;Ljava/util/List;)V

    .line 304
    .end local v0    # "pkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_8c
    iget-object v0, v14, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mPackages:Ljava/util/ArrayList;

    if-eqz v0, :cond_93

    .line 305
    invoke-direct {v14, v13, v0}, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->addPackagesToSet(Ljava/util/TreeMap;Ljava/util/List;)V

    .line 312
    :cond_93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v0

    .line 314
    .local v9, "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    iget-boolean v0, v14, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mPrivilegeApp:Z

    if-eqz v0, :cond_a3

    iget v0, v14, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mExtraFlag:I

    and-int/lit16 v0, v0, 0x200

    if-nez v0, :cond_11f

    .line 315
    :cond_a3
    invoke-virtual {v13}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 316
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;>;"
    :goto_ab
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_11f

    .line 317
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 318
    .local v1, "pkg":Landroid/content/pm/PackageInfo;
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v14, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 319
    invoke-virtual {v3}, Lcom/android/server/backup/UserBackupManagerService;->getUserId()I

    move-result v3

    .line 318
    invoke-static {v2, v3}, Lcom/android/server/backup/utils/AppBackupUtils;->appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;I)Z

    move-result v2

    if-eqz v2, :cond_fe

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 320
    invoke-static {v2}, Lcom/android/server/backup/utils/AppBackupUtils;->appIsStopped(Landroid/content/pm/ApplicationInfo;)Z

    move-result v2

    if-eqz v2, :cond_d4

    goto :goto_fe

    .line 326
    :cond_d4
    invoke-static {v1}, Lcom/android/server/backup/utils/AppBackupUtils;->appIsKeyValueOnly(Landroid/content/pm/PackageInfo;)Z

    move-result v2

    if-eqz v2, :cond_11e

    .line 327
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 329
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is key-value."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BackupManagerService"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_11e

    .line 321
    :cond_fe
    :goto_fe
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 323
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is not eligible for backup, removing."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BackupManagerService"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    .end local v1    # "pkg":Landroid/content/pm/PackageInfo;
    :cond_11e
    :goto_11e
    goto :goto_ab

    .line 338
    .end local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;>;"
    :cond_11f
    new-instance v0, Ljava/util/ArrayList;

    .line 339
    invoke-virtual {v13}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v7, v0

    .line 340
    .local v7, "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, v14, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object v6, v0

    .line 341
    .local v6, "ofstream":Ljava/io/FileOutputStream;
    const/4 v1, 0x0

    .line 343
    .local v1, "out":Ljava/io/OutputStream;
    const/4 v2, 0x0

    .line 345
    .restart local v2    # "pkg":Landroid/content/pm/PackageInfo;
    :try_start_137
    iget-object v0, v14, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mEncryptPassword:Ljava/lang/String;
    :try_end_139
    .catch Landroid/os/RemoteException; {:try_start_137 .. :try_end_139} :catch_823
    .catch Ljava/lang/Exception; {:try_start_137 .. :try_end_139} :catch_7a4
    .catchall {:try_start_137 .. :try_end_139} :catchall_793

    if-eqz v0, :cond_176

    :try_start_13b
    iget-object v0, v14, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mEncryptPassword:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0
    :try_end_141
    .catch Landroid/os/RemoteException; {:try_start_13b .. :try_end_141} :catch_166
    .catch Ljava/lang/Exception; {:try_start_13b .. :try_end_141} :catch_156
    .catchall {:try_start_13b .. :try_end_141} :catchall_145

    if-lez v0, :cond_176

    move v0, v8

    goto :goto_177

    .line 516
    :catchall_145
    move-exception v0

    move-object v3, v0

    move-object/from16 v32, v6

    move-object/from16 v28, v7

    move v5, v8

    move-object/from16 v26, v9

    move-object/from16 v33, v10

    move v6, v11

    move-object v4, v12

    move-object/from16 v17, v13

    goto/16 :goto_8ad

    .line 510
    :catch_156
    move-exception v0

    move-object/from16 v32, v6

    move-object/from16 v28, v7

    move v5, v8

    move-object/from16 v26, v9

    move-object/from16 v33, v10

    move v6, v11

    move-object v4, v12

    move-object/from16 v17, v13

    goto/16 :goto_7b2

    .line 505
    :catch_166
    move-exception v0

    move-object/from16 v32, v6

    move-object/from16 v28, v7

    move v5, v8

    move-object/from16 v26, v9

    move-object/from16 v33, v10

    move v6, v11

    move-object v4, v12

    move-object/from16 v17, v13

    goto/16 :goto_831

    .line 345
    :cond_176
    move v0, v11

    :goto_177
    move/from16 v16, v0

    .line 349
    .local v16, "encrypting":Z
    :try_start_179
    iget-boolean v0, v14, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mPrivilegeApp:Z
    :try_end_17b
    .catch Landroid/os/RemoteException; {:try_start_179 .. :try_end_17b} :catch_823
    .catch Ljava/lang/Exception; {:try_start_179 .. :try_end_17b} :catch_7a4
    .catchall {:try_start_179 .. :try_end_17b} :catchall_793

    if-nez v0, :cond_205

    :try_start_17d
    iget-object v0, v14, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->deviceIsEncrypted()Z

    move-result v0

    if-eqz v0, :cond_205

    if-nez v16, :cond_205

    .line 350
    const-string v0, "BackupManagerService"

    const-string v3, "Unencrypted backup of encrypted device; aborting"

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    sget-object v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    if-eqz v0, :cond_19c

    .line 352
    sget-object v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerYuva;->setMemorySaverBackupFail()V

    .line 353
    sget-object v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerYuva;->sendEndBackupCallback()V
    :try_end_19c
    .catch Landroid/os/RemoteException; {:try_start_17d .. :try_end_19c} :catch_166
    .catch Ljava/lang/Exception; {:try_start_17d .. :try_end_19c} :catch_156
    .catchall {:try_start_17d .. :try_end_19c} :catchall_145

    .line 517
    :cond_19c
    if-eqz v1, :cond_1a4

    .line 518
    :try_start_19e
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 519
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 521
    :cond_1a4
    iget-object v0, v14, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1a9
    .catch Ljava/io/IOException; {:try_start_19e .. :try_end_1a9} :catch_1aa

    .line 524
    goto :goto_1c5

    .line 522
    :catch_1aa
    move-exception v0

    .line 523
    .local v0, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IO error closing adb backup file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BackupManagerService"

    invoke-static {v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    .end local v0    # "e":Ljava/io/IOException;
    :goto_1c5
    iget-object v3, v14, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v3

    .line 526
    :try_start_1c8
    iget-object v0, v14, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 527
    iget-object v0, v14, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 528
    monitor-exit v3
    :try_end_1d3
    .catchall {:try_start_1c8 .. :try_end_1d3} :catchall_202

    .line 529
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->sendEndBackup()V

    .line 530
    sget-object v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    if-eqz v0, :cond_1dd

    .line 531
    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerYuva;->sendEndBackupCallback()V

    .line 533
    :cond_1dd
    invoke-virtual {v12}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->tearDown()V

    .line 535
    const-string v0, "BackupManagerService"

    const-string v3, "Full backup pass complete."

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    iget-object v0, v14, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0, v11}, Lcom/android/server/backup/UserBackupManagerService;->setSepWakeLock(Z)V

    .line 539
    iget-object v0, v14, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getWakelock()Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_201

    .line 540
    iget-object v0, v14, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getWakelock()Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->release()V

    .line 355
    :cond_201
    return-void

    .line 528
    :catchall_202
    move-exception v0

    :try_start_203
    monitor-exit v3
    :try_end_204
    .catchall {:try_start_203 .. :try_end_204} :catchall_202

    throw v0

    .line 358
    :cond_205
    move-object v3, v6

    .line 363
    .local v3, "finalOutput":Ljava/io/OutputStream;
    :try_start_206
    iget-boolean v0, v14, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mPrivilegeApp:Z
    :try_end_208
    .catch Landroid/os/RemoteException; {:try_start_206 .. :try_end_208} :catch_823
    .catch Ljava/lang/Exception; {:try_start_206 .. :try_end_208} :catch_7a4
    .catchall {:try_start_206 .. :try_end_208} :catchall_793

    if-nez v0, :cond_284

    :try_start_20a
    iget-object v0, v14, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v4, v14, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mCurrentPassword:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/android/server/backup/UserBackupManagerService;->backupPasswordMatches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_284

    .line 365
    const-string v0, "BackupManagerService"

    const-string v4, "Backup password mismatch; aborting"

    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_21b
    .catch Landroid/os/RemoteException; {:try_start_20a .. :try_end_21b} :catch_166
    .catch Ljava/lang/Exception; {:try_start_20a .. :try_end_21b} :catch_156
    .catchall {:try_start_20a .. :try_end_21b} :catchall_145

    .line 517
    if-eqz v1, :cond_223

    .line 518
    :try_start_21d
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 519
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 521
    :cond_223
    iget-object v0, v14, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_228
    .catch Ljava/io/IOException; {:try_start_21d .. :try_end_228} :catch_229

    .line 524
    goto :goto_244

    .line 522
    :catch_229
    move-exception v0

    .line 523
    .restart local v0    # "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IO error closing adb backup file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "BackupManagerService"

    invoke-static {v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    .end local v0    # "e":Ljava/io/IOException;
    :goto_244
    iget-object v4, v14, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v4

    .line 526
    :try_start_247
    iget-object v0, v14, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 527
    iget-object v0, v14, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 528
    monitor-exit v4
    :try_end_252
    .catchall {:try_start_247 .. :try_end_252} :catchall_281

    .line 529
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->sendEndBackup()V

    .line 530
    sget-object v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    if-eqz v0, :cond_25c

    .line 531
    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerYuva;->sendEndBackupCallback()V

    .line 533
    :cond_25c
    invoke-virtual {v12}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->tearDown()V

    .line 535
    const-string v0, "BackupManagerService"

    const-string v4, "Full backup pass complete."

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    iget-object v0, v14, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0, v11}, Lcom/android/server/backup/UserBackupManagerService;->setSepWakeLock(Z)V

    .line 539
    iget-object v0, v14, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getWakelock()Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_280

    .line 540
    iget-object v0, v14, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getWakelock()Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->release()V

    .line 367
    :cond_280
    return-void

    .line 528
    :catchall_281
    move-exception v0

    :try_start_282
    monitor-exit v4
    :try_end_283
    .catchall {:try_start_282 .. :try_end_283} :catchall_281

    throw v0

    .line 395
    :cond_284
    :try_start_284
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v4, 0x400

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v5, v0

    .line 397
    .local v5, "headerbuf":Ljava/lang/StringBuilder;
    const-string v0, "ANDROID BACKUP\n"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    const/4 v0, 0x5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 399
    iget-boolean v0, v14, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mCompress:Z
    :try_end_297
    .catch Landroid/os/RemoteException; {:try_start_284 .. :try_end_297} :catch_823
    .catch Ljava/lang/Exception; {:try_start_284 .. :try_end_297} :catch_7a4
    .catchall {:try_start_284 .. :try_end_297} :catchall_793

    if-eqz v0, :cond_29c

    :try_start_299
    const-string v0, "\n1\n"
    :try_end_29b
    .catch Landroid/os/RemoteException; {:try_start_299 .. :try_end_29b} :catch_166
    .catch Ljava/lang/Exception; {:try_start_299 .. :try_end_29b} :catch_156
    .catchall {:try_start_299 .. :try_end_29b} :catchall_145

    goto :goto_29e

    :cond_29c
    :try_start_29c
    const-string v0, "\n0\n"

    :goto_29e
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2a1
    .catch Landroid/os/RemoteException; {:try_start_29c .. :try_end_2a1} :catch_823
    .catch Ljava/lang/Exception; {:try_start_29c .. :try_end_2a1} :catch_7a4
    .catchall {:try_start_29c .. :try_end_2a1} :catchall_793

    .line 403
    if-eqz v16, :cond_2bb

    .line 404
    :try_start_2a3
    invoke-direct {v14, v5, v3}, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->emitAesBackupHeader(Ljava/lang/StringBuilder;Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v0
    :try_end_2a7
    .catch Ljava/lang/Exception; {:try_start_2a3 .. :try_end_2a7} :catch_2a9
    .catch Landroid/os/RemoteException; {:try_start_2a3 .. :try_end_2a7} :catch_166
    .catchall {:try_start_2a3 .. :try_end_2a7} :catchall_145

    move-object v3, v0

    goto :goto_2c1

    .line 419
    :catch_2a9
    move-exception v0

    move-object/from16 v31, v5

    move-object/from16 v32, v6

    move-object/from16 v28, v7

    move v5, v8

    move-object/from16 v26, v9

    move-object/from16 v33, v10

    move v6, v11

    move-object v4, v12

    move-object/from16 v17, v13

    goto/16 :goto_70f

    .line 406
    :cond_2bb
    :try_start_2bb
    const-string/jumbo v0, "none\n"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    :goto_2c1
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "UTF-8"

    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 410
    .local v0, "header":[B
    invoke-virtual {v6, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 413
    iget-boolean v4, v14, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mCompress:Z
    :try_end_2d0
    .catch Ljava/lang/Exception; {:try_start_2bb .. :try_end_2d0} :catch_6ff
    .catch Landroid/os/RemoteException; {:try_start_2bb .. :try_end_2d0} :catch_823
    .catchall {:try_start_2bb .. :try_end_2d0} :catchall_793

    if-eqz v4, :cond_315

    .line 414
    :try_start_2d2
    new-instance v4, Ljava/util/zip/Deflater;
    :try_end_2d4
    .catch Ljava/lang/Exception; {:try_start_2d2 .. :try_end_2d4} :catch_2a9
    .catch Landroid/os/RemoteException; {:try_start_2d2 .. :try_end_2d4} :catch_166
    .catchall {:try_start_2d2 .. :try_end_2d4} :catchall_145

    const/16 v11, 0x9

    :try_start_2d6
    invoke-direct {v4, v11}, Ljava/util/zip/Deflater;-><init>(I)V

    .line 415
    .local v4, "deflater":Ljava/util/zip/Deflater;
    new-instance v11, Ljava/util/zip/DeflaterOutputStream;

    invoke-direct {v11, v3, v4, v8}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;Ljava/util/zip/Deflater;Z)V
    :try_end_2de
    .catch Ljava/lang/Exception; {:try_start_2d6 .. :try_end_2de} :catch_303
    .catch Landroid/os/RemoteException; {:try_start_2d6 .. :try_end_2de} :catch_2f3
    .catchall {:try_start_2d6 .. :try_end_2de} :catchall_2e2

    move-object v3, v11

    move-object/from16 v18, v3

    goto :goto_317

    .line 516
    .end local v0    # "header":[B
    .end local v3    # "finalOutput":Ljava/io/OutputStream;
    .end local v4    # "deflater":Ljava/util/zip/Deflater;
    .end local v5    # "headerbuf":Ljava/lang/StringBuilder;
    .end local v16    # "encrypting":Z
    :catchall_2e2
    move-exception v0

    move-object v3, v0

    move-object/from16 v32, v6

    move-object/from16 v28, v7

    move v5, v8

    move-object/from16 v26, v9

    move-object/from16 v33, v10

    move-object v4, v12

    move-object/from16 v17, v13

    const/4 v6, 0x0

    goto/16 :goto_8ad

    .line 505
    :catch_2f3
    move-exception v0

    move-object/from16 v32, v6

    move-object/from16 v28, v7

    move v5, v8

    move-object/from16 v26, v9

    move-object/from16 v33, v10

    move-object v4, v12

    move-object/from16 v17, v13

    const/4 v6, 0x0

    goto/16 :goto_831

    .line 419
    .restart local v3    # "finalOutput":Ljava/io/OutputStream;
    .restart local v5    # "headerbuf":Ljava/lang/StringBuilder;
    .restart local v16    # "encrypting":Z
    :catch_303
    move-exception v0

    move-object/from16 v31, v5

    move-object/from16 v32, v6

    move-object/from16 v28, v7

    move v5, v8

    move-object/from16 v26, v9

    move-object/from16 v33, v10

    move-object v4, v12

    move-object/from16 v17, v13

    const/4 v6, 0x0

    goto/16 :goto_70f

    .line 413
    .restart local v0    # "header":[B
    :cond_315
    move-object/from16 v18, v3

    .line 418
    .end local v3    # "finalOutput":Ljava/io/OutputStream;
    .local v18, "finalOutput":Ljava/io/OutputStream;
    :goto_317
    move-object/from16 v11, v18

    .line 427
    .end local v0    # "header":[B
    .end local v1    # "out":Ljava/io/OutputStream;
    .local v11, "out":Ljava/io/OutputStream;
    nop

    .line 430
    :try_start_31a
    iget-boolean v0, v14, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mIncludeShared:Z
    :try_end_31c
    .catch Landroid/os/RemoteException; {:try_start_31a .. :try_end_31c} :catch_6ed
    .catch Ljava/lang/Exception; {:try_start_31a .. :try_end_31c} :catch_6db
    .catchall {:try_start_31a .. :try_end_31c} :catchall_6c8

    if-eqz v0, :cond_3ae

    .line 432
    :try_start_31e
    iget-object v0, v14, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.android.sharedstoragebackup"
    :try_end_326
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_31e .. :try_end_326} :catch_367
    .catch Landroid/os/RemoteException; {:try_start_31e .. :try_end_326} :catch_356
    .catch Ljava/lang/Exception; {:try_start_31e .. :try_end_326} :catch_345
    .catchall {:try_start_31e .. :try_end_326} :catchall_333

    const/4 v4, 0x0

    :try_start_327
    invoke-virtual {v0, v1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    move-object v2, v0

    .line 434
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_32f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_327 .. :try_end_32f} :catch_331
    .catch Landroid/os/RemoteException; {:try_start_327 .. :try_end_32f} :catch_39d
    .catch Ljava/lang/Exception; {:try_start_327 .. :try_end_32f} :catch_38c
    .catchall {:try_start_327 .. :try_end_32f} :catchall_37a

    .line 440
    goto/16 :goto_3af

    .line 435
    :catch_331
    move-exception v0

    goto :goto_369

    .line 516
    .end local v5    # "headerbuf":Ljava/lang/StringBuilder;
    .end local v16    # "encrypting":Z
    .end local v18    # "finalOutput":Ljava/io/OutputStream;
    :catchall_333
    move-exception v0

    move-object v3, v0

    move-object/from16 v32, v6

    move-object/from16 v28, v7

    move v5, v8

    move-object/from16 v26, v9

    move-object/from16 v33, v10

    move-object v1, v11

    move-object v4, v12

    move-object/from16 v17, v13

    const/4 v6, 0x0

    goto/16 :goto_8ad

    .line 510
    :catch_345
    move-exception v0

    move-object/from16 v32, v6

    move-object/from16 v28, v7

    move v5, v8

    move-object/from16 v26, v9

    move-object/from16 v33, v10

    move-object v1, v11

    move-object v4, v12

    move-object/from16 v17, v13

    const/4 v6, 0x0

    goto/16 :goto_7b2

    .line 505
    :catch_356
    move-exception v0

    move-object/from16 v32, v6

    move-object/from16 v28, v7

    move v5, v8

    move-object/from16 v26, v9

    move-object/from16 v33, v10

    move-object v1, v11

    move-object v4, v12

    move-object/from16 v17, v13

    const/4 v6, 0x0

    goto/16 :goto_831

    .line 435
    .restart local v5    # "headerbuf":Ljava/lang/StringBuilder;
    .restart local v16    # "encrypting":Z
    .restart local v18    # "finalOutput":Ljava/io/OutputStream;
    :catch_367
    move-exception v0

    const/4 v4, 0x0

    .line 436
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_369
    :try_start_369
    const-string v1, "BackupManagerService"

    const-string v3, "Unable to find shared-storage backup handler"

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    sget-object v1, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    if-eqz v1, :cond_3af

    .line 438
    sget-object v1, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    invoke-virtual {v1}, Lcom/android/server/backup/BackupManagerYuva;->setMemorySaverBackupFail()V
    :try_end_379
    .catch Landroid/os/RemoteException; {:try_start_369 .. :try_end_379} :catch_39d
    .catch Ljava/lang/Exception; {:try_start_369 .. :try_end_379} :catch_38c
    .catchall {:try_start_369 .. :try_end_379} :catchall_37a

    goto :goto_3af

    .line 516
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v5    # "headerbuf":Ljava/lang/StringBuilder;
    .end local v16    # "encrypting":Z
    .end local v18    # "finalOutput":Ljava/io/OutputStream;
    :catchall_37a
    move-exception v0

    move-object v3, v0

    move-object/from16 v32, v6

    move-object/from16 v28, v7

    move v5, v8

    move-object/from16 v26, v9

    move-object/from16 v33, v10

    move-object v1, v11

    move-object/from16 v17, v13

    move v6, v4

    move-object v4, v12

    goto/16 :goto_8ad

    .line 510
    :catch_38c
    move-exception v0

    move-object/from16 v32, v6

    move-object/from16 v28, v7

    move v5, v8

    move-object/from16 v26, v9

    move-object/from16 v33, v10

    move-object v1, v11

    move-object/from16 v17, v13

    move v6, v4

    move-object v4, v12

    goto/16 :goto_7b2

    .line 505
    :catch_39d
    move-exception v0

    move-object/from16 v32, v6

    move-object/from16 v28, v7

    move v5, v8

    move-object/from16 v26, v9

    move-object/from16 v33, v10

    move-object v1, v11

    move-object/from16 v17, v13

    move v6, v4

    move-object v4, v12

    goto/16 :goto_831

    .line 430
    .restart local v5    # "headerbuf":Ljava/lang/StringBuilder;
    .restart local v16    # "encrypting":Z
    .restart local v18    # "finalOutput":Ljava/io/OutputStream;
    :cond_3ae
    const/4 v4, 0x0

    .line 444
    :cond_3af
    :goto_3af
    :try_start_3af
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0
    :try_end_3b3
    .catch Landroid/os/RemoteException; {:try_start_3af .. :try_end_3b3} :catch_6b8
    .catch Ljava/lang/Exception; {:try_start_3af .. :try_end_3b3} :catch_6a8
    .catchall {:try_start_3af .. :try_end_3b3} :catchall_698

    .line 445
    .local v0, "N":I
    const/4 v1, 0x0

    move v3, v1

    .local v3, "i":I
    :goto_3b5
    if-ge v3, v0, :cond_597

    .line 446
    :try_start_3b7
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    move-object v2, v1

    .line 448
    const-string v1, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_3c5
    .catch Landroid/os/RemoteException; {:try_start_3b7 .. :try_end_3c5} :catch_585
    .catch Ljava/lang/Exception; {:try_start_3b7 .. :try_end_3c5} :catch_573
    .catchall {:try_start_3b7 .. :try_end_3c5} :catchall_561

    :try_start_3c5
    const-string v8, "--- Performing full backup for package "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " ---"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    iget-object v1, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v4, "com.android.sharedstoragebackup"

    .line 452
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    move/from16 v20, v1

    .line 455
    .local v20, "isSharedStorage":Z
    new-instance v21, Lcom/android/server/backup/fullbackup/FullBackupEngine;

    iget-object v4, v14, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    const/4 v8, 0x0

    iget-boolean v1, v14, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mIncludeApks:Z
    :try_end_3ec
    .catch Landroid/os/RemoteException; {:try_start_3c5 .. :try_end_3ec} :catch_551
    .catch Ljava/lang/Exception; {:try_start_3c5 .. :try_end_3ec} :catch_541
    .catchall {:try_start_3c5 .. :try_end_3ec} :catchall_531

    const-wide v22, 0x7fffffffffffffffL

    move-object/from16 v24, v9

    .end local v9    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .local v24, "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    :try_start_3f3
    iget v9, v14, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mCurrentOpToken:I

    const/16 v25, 0x0

    move/from16 v26, v9

    iget v9, v14, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mExtraFlag:I

    move/from16 v27, v9

    iget-boolean v9, v14, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mPrivilegeApp:Z
    :try_end_3ff
    .catch Landroid/os/RemoteException; {:try_start_3f3 .. :try_end_3ff} :catch_51f
    .catch Ljava/lang/Exception; {:try_start_3f3 .. :try_end_3ff} :catch_50d
    .catchall {:try_start_3f3 .. :try_end_3ff} :catchall_4fa

    move/from16 v28, v1

    move-object/from16 v1, v21

    move-object/from16 v29, v2

    .end local v2    # "pkg":Landroid/content/pm/PackageInfo;
    .local v29, "pkg":Landroid/content/pm/PackageInfo;
    move-object v2, v4

    move/from16 v30, v3

    .end local v3    # "i":I
    .local v30, "i":I
    move-object v3, v11

    const/16 v17, 0x0

    move-object v4, v8

    move-object/from16 v31, v5

    .end local v5    # "headerbuf":Ljava/lang/StringBuilder;
    .local v31, "headerbuf":Ljava/lang/StringBuilder;
    move-object/from16 v5, v29

    move-object/from16 v32, v6

    .end local v6    # "ofstream":Ljava/io/FileOutputStream;
    .local v32, "ofstream":Ljava/io/FileOutputStream;
    move/from16 v6, v28

    move-object/from16 v28, v7

    .end local v7    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .local v28, "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    move-object/from16 v7, p0

    move/from16 v19, v26

    move-object/from16 v26, v24

    move/from16 v24, v27

    move/from16 v27, v9

    .end local v24    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .local v26, "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    move-wide/from16 v8, v22

    move-object/from16 v33, v10

    .end local v10    # "pm":Landroid/content/pm/PackageManager;
    .local v33, "pm":Landroid/content/pm/PackageManager;
    move/from16 v10, v19

    move-object/from16 v34, v11

    .end local v11    # "out":Ljava/io/OutputStream;
    .local v34, "out":Ljava/io/OutputStream;
    move/from16 v11, v25

    move-object/from16 v35, v12

    .end local v12    # "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    .local v35, "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    move/from16 v12, v24

    move-object/from16 v17, v13

    .end local v13    # "packagesToBackup":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;"
    .local v17, "packagesToBackup":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;"
    move/from16 v13, v27

    :try_start_432
    invoke-direct/range {v1 .. v13}, Lcom/android/server/backup/fullbackup/FullBackupEngine;-><init>(Lcom/android/server/backup/UserBackupManagerService;Ljava/io/OutputStream;Lcom/android/server/backup/fullbackup/FullBackupPreflight;Landroid/content/pm/PackageInfo;ZLcom/android/server/backup/BackupRestoreTask;JIIIZ)V
    :try_end_435
    .catch Landroid/os/RemoteException; {:try_start_432 .. :try_end_435} :catch_4ee
    .catch Ljava/lang/Exception; {:try_start_432 .. :try_end_435} :catch_4e2
    .catchall {:try_start_432 .. :try_end_435} :catchall_4d5

    move-object/from16 v1, v21

    .line 467
    .local v1, "mBackupEngine":Lcom/android/server/backup/fullbackup/FullBackupEngine;
    if-eqz v20, :cond_461

    :try_start_439
    const-string v2, "Shared storage"
    :try_end_43b
    .catch Landroid/os/RemoteException; {:try_start_439 .. :try_end_43b} :catch_456
    .catch Ljava/lang/Exception; {:try_start_439 .. :try_end_43b} :catch_44b
    .catchall {:try_start_439 .. :try_end_43b} :catchall_43f

    move-object v3, v2

    move-object/from16 v2, v29

    goto :goto_465

    .line 516
    .end local v0    # "N":I
    .end local v1    # "mBackupEngine":Lcom/android/server/backup/fullbackup/FullBackupEngine;
    .end local v16    # "encrypting":Z
    .end local v18    # "finalOutput":Ljava/io/OutputStream;
    .end local v20    # "isSharedStorage":Z
    .end local v30    # "i":I
    .end local v31    # "headerbuf":Ljava/lang/StringBuilder;
    :catchall_43f
    move-exception v0

    move-object v3, v0

    move-object/from16 v2, v29

    move-object/from16 v1, v34

    move-object/from16 v4, v35

    const/4 v5, 0x1

    const/4 v6, 0x0

    goto/16 :goto_8ad

    .line 510
    :catch_44b
    move-exception v0

    move-object/from16 v2, v29

    move-object/from16 v1, v34

    move-object/from16 v4, v35

    const/4 v5, 0x1

    const/4 v6, 0x0

    goto/16 :goto_7b2

    .line 505
    :catch_456
    move-exception v0

    move-object/from16 v2, v29

    move-object/from16 v1, v34

    move-object/from16 v4, v35

    const/4 v5, 0x1

    const/4 v6, 0x0

    goto/16 :goto_831

    .line 467
    .restart local v0    # "N":I
    .restart local v1    # "mBackupEngine":Lcom/android/server/backup/fullbackup/FullBackupEngine;
    .restart local v16    # "encrypting":Z
    .restart local v18    # "finalOutput":Ljava/io/OutputStream;
    .restart local v20    # "isSharedStorage":Z
    .restart local v30    # "i":I
    .restart local v31    # "headerbuf":Ljava/lang/StringBuilder;
    :cond_461
    move-object/from16 v2, v29

    .end local v29    # "pkg":Landroid/content/pm/PackageInfo;
    .restart local v2    # "pkg":Landroid/content/pm/PackageInfo;
    :try_start_463
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    :goto_465
    invoke-virtual {v14, v3}, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->sendOnBackupPackage(Ljava/lang/String;)V

    .line 470
    iput-object v2, v14, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mCurrentTarget:Landroid/content/pm/PackageInfo;

    .line 471
    invoke-virtual {v1}, Lcom/android/server/backup/fullbackup/FullBackupEngine;->backupOnePackage()I

    .line 475
    iget-boolean v3, v14, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mIncludeObbs:Z
    :try_end_46f
    .catch Landroid/os/RemoteException; {:try_start_463 .. :try_end_46f} :catch_4cb
    .catch Ljava/lang/Exception; {:try_start_463 .. :try_end_46f} :catch_4c1
    .catchall {:try_start_463 .. :try_end_46f} :catchall_4b6

    if-eqz v3, :cond_49d

    if-nez v20, :cond_49d

    .line 476
    move-object/from16 v3, v34

    move-object/from16 v4, v35

    .end local v34    # "out":Ljava/io/OutputStream;
    .end local v35    # "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    .local v3, "out":Ljava/io/OutputStream;
    .local v4, "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    :try_start_477
    invoke-virtual {v4, v2, v3}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->backupObbs(Landroid/content/pm/PackageInfo;Ljava/io/OutputStream;)Z

    move-result v5

    .line 477
    .local v5, "obbOkay":Z
    if-nez v5, :cond_4a1

    .line 478
    sget-object v6, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    if-eqz v6, :cond_486

    .line 479
    sget-object v6, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    invoke-virtual {v6}, Lcom/android/server/backup/BackupManagerYuva;->setMemorySaverBackupFail()V

    .line 481
    :cond_486
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failure writing OBB stack for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v2    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v3    # "out":Ljava/io/OutputStream;
    .end local v4    # "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    .end local v15    # "includeKeyValue":Ljava/lang/String;
    .end local v17    # "packagesToBackup":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;"
    .end local v26    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v28    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v32    # "ofstream":Ljava/io/FileOutputStream;
    .end local v33    # "pm":Landroid/content/pm/PackageManager;
    .end local p0    # "this":Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;
    throw v6
    :try_end_49d
    .catch Landroid/os/RemoteException; {:try_start_477 .. :try_end_49d} :catch_60f
    .catch Ljava/lang/Exception; {:try_start_477 .. :try_end_49d} :catch_609
    .catchall {:try_start_477 .. :try_end_49d} :catchall_602

    .line 475
    .end local v5    # "obbOkay":Z
    .restart local v2    # "pkg":Landroid/content/pm/PackageInfo;
    .restart local v15    # "includeKeyValue":Ljava/lang/String;
    .restart local v17    # "packagesToBackup":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;"
    .restart local v26    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v28    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v32    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v33    # "pm":Landroid/content/pm/PackageManager;
    .restart local v34    # "out":Ljava/io/OutputStream;
    .restart local v35    # "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    .restart local p0    # "this":Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;
    :cond_49d
    move-object/from16 v3, v34

    move-object/from16 v4, v35

    .line 445
    .end local v1    # "mBackupEngine":Lcom/android/server/backup/fullbackup/FullBackupEngine;
    .end local v20    # "isSharedStorage":Z
    .end local v34    # "out":Ljava/io/OutputStream;
    .end local v35    # "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    .restart local v3    # "out":Ljava/io/OutputStream;
    .restart local v4    # "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    :cond_4a1
    add-int/lit8 v1, v30, 0x1

    move-object v11, v3

    move-object v12, v4

    move-object/from16 v13, v17

    move-object/from16 v9, v26

    move-object/from16 v7, v28

    move-object/from16 v5, v31

    move-object/from16 v6, v32

    move-object/from16 v10, v33

    const/4 v4, 0x0

    const/4 v8, 0x1

    move v3, v1

    .end local v30    # "i":I
    .local v1, "i":I
    goto/16 :goto_3b5

    .line 516
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v3    # "out":Ljava/io/OutputStream;
    .end local v4    # "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    .end local v16    # "encrypting":Z
    .end local v18    # "finalOutput":Ljava/io/OutputStream;
    .end local v31    # "headerbuf":Ljava/lang/StringBuilder;
    .restart local v34    # "out":Ljava/io/OutputStream;
    .restart local v35    # "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    :catchall_4b6
    move-exception v0

    move-object/from16 v3, v34

    move-object/from16 v4, v35

    move-object v1, v3

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v3, v0

    .end local v34    # "out":Ljava/io/OutputStream;
    .end local v35    # "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    .restart local v3    # "out":Ljava/io/OutputStream;
    .restart local v4    # "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    goto/16 :goto_8ad

    .line 510
    .end local v3    # "out":Ljava/io/OutputStream;
    .end local v4    # "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    .restart local v34    # "out":Ljava/io/OutputStream;
    .restart local v35    # "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    :catch_4c1
    move-exception v0

    move-object/from16 v3, v34

    move-object/from16 v4, v35

    move-object v1, v3

    const/4 v5, 0x1

    const/4 v6, 0x0

    .end local v34    # "out":Ljava/io/OutputStream;
    .end local v35    # "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    .restart local v3    # "out":Ljava/io/OutputStream;
    .restart local v4    # "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    goto/16 :goto_7b2

    .line 505
    .end local v3    # "out":Ljava/io/OutputStream;
    .end local v4    # "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    .restart local v34    # "out":Ljava/io/OutputStream;
    .restart local v35    # "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    :catch_4cb
    move-exception v0

    move-object/from16 v3, v34

    move-object/from16 v4, v35

    move-object v1, v3

    const/4 v5, 0x1

    const/4 v6, 0x0

    .end local v34    # "out":Ljava/io/OutputStream;
    .end local v35    # "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    .restart local v3    # "out":Ljava/io/OutputStream;
    .restart local v4    # "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    goto/16 :goto_831

    .line 516
    .end local v2    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v3    # "out":Ljava/io/OutputStream;
    .end local v4    # "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    .restart local v29    # "pkg":Landroid/content/pm/PackageInfo;
    .restart local v34    # "out":Ljava/io/OutputStream;
    .restart local v35    # "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    :catchall_4d5
    move-exception v0

    move-object/from16 v2, v29

    move-object/from16 v3, v34

    move-object/from16 v4, v35

    move-object v1, v3

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v3, v0

    .end local v29    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v34    # "out":Ljava/io/OutputStream;
    .end local v35    # "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    .restart local v2    # "pkg":Landroid/content/pm/PackageInfo;
    .restart local v3    # "out":Ljava/io/OutputStream;
    .restart local v4    # "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    goto/16 :goto_8ad

    .line 510
    .end local v2    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v3    # "out":Ljava/io/OutputStream;
    .end local v4    # "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    .restart local v29    # "pkg":Landroid/content/pm/PackageInfo;
    .restart local v34    # "out":Ljava/io/OutputStream;
    .restart local v35    # "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    :catch_4e2
    move-exception v0

    move-object/from16 v2, v29

    move-object/from16 v3, v34

    move-object/from16 v4, v35

    move-object v1, v3

    const/4 v5, 0x1

    const/4 v6, 0x0

    .end local v29    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v34    # "out":Ljava/io/OutputStream;
    .end local v35    # "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    .restart local v2    # "pkg":Landroid/content/pm/PackageInfo;
    .restart local v3    # "out":Ljava/io/OutputStream;
    .restart local v4    # "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    goto/16 :goto_7b2

    .line 505
    .end local v2    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v3    # "out":Ljava/io/OutputStream;
    .end local v4    # "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    .restart local v29    # "pkg":Landroid/content/pm/PackageInfo;
    .restart local v34    # "out":Ljava/io/OutputStream;
    .restart local v35    # "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    :catch_4ee
    move-exception v0

    move-object/from16 v2, v29

    move-object/from16 v3, v34

    move-object/from16 v4, v35

    move-object v1, v3

    const/4 v5, 0x1

    const/4 v6, 0x0

    .end local v29    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v34    # "out":Ljava/io/OutputStream;
    .end local v35    # "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    .restart local v2    # "pkg":Landroid/content/pm/PackageInfo;
    .restart local v3    # "out":Ljava/io/OutputStream;
    .restart local v4    # "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    goto/16 :goto_831

    .line 516
    .end local v3    # "out":Ljava/io/OutputStream;
    .end local v4    # "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    .end local v17    # "packagesToBackup":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;"
    .end local v26    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v28    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v32    # "ofstream":Ljava/io/FileOutputStream;
    .end local v33    # "pm":Landroid/content/pm/PackageManager;
    .restart local v6    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v7    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v10    # "pm":Landroid/content/pm/PackageManager;
    .restart local v11    # "out":Ljava/io/OutputStream;
    .restart local v12    # "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    .restart local v13    # "packagesToBackup":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;"
    .restart local v24    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    :catchall_4fa
    move-exception v0

    move-object/from16 v32, v6

    move-object/from16 v28, v7

    move-object/from16 v33, v10

    move-object v3, v11

    move-object v4, v12

    move-object/from16 v17, v13

    move-object/from16 v26, v24

    move-object v1, v3

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v3, v0

    .end local v6    # "ofstream":Ljava/io/FileOutputStream;
    .end local v7    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v10    # "pm":Landroid/content/pm/PackageManager;
    .end local v11    # "out":Ljava/io/OutputStream;
    .end local v12    # "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    .end local v13    # "packagesToBackup":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;"
    .end local v24    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v3    # "out":Ljava/io/OutputStream;
    .restart local v4    # "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    .restart local v17    # "packagesToBackup":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;"
    .restart local v26    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v28    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v32    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v33    # "pm":Landroid/content/pm/PackageManager;
    goto/16 :goto_8ad

    .line 510
    .end local v3    # "out":Ljava/io/OutputStream;
    .end local v4    # "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    .end local v17    # "packagesToBackup":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;"
    .end local v26    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v28    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v32    # "ofstream":Ljava/io/FileOutputStream;
    .end local v33    # "pm":Landroid/content/pm/PackageManager;
    .restart local v6    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v7    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v10    # "pm":Landroid/content/pm/PackageManager;
    .restart local v11    # "out":Ljava/io/OutputStream;
    .restart local v12    # "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    .restart local v13    # "packagesToBackup":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;"
    .restart local v24    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    :catch_50d
    move-exception v0

    move-object/from16 v32, v6

    move-object/from16 v28, v7

    move-object/from16 v33, v10

    move-object v3, v11

    move-object v4, v12

    move-object/from16 v17, v13

    move-object/from16 v26, v24

    move-object v1, v3

    const/4 v5, 0x1

    const/4 v6, 0x0

    .end local v6    # "ofstream":Ljava/io/FileOutputStream;
    .end local v7    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v10    # "pm":Landroid/content/pm/PackageManager;
    .end local v11    # "out":Ljava/io/OutputStream;
    .end local v12    # "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    .end local v13    # "packagesToBackup":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;"
    .end local v24    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v3    # "out":Ljava/io/OutputStream;
    .restart local v4    # "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    .restart local v17    # "packagesToBackup":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;"
    .restart local v26    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v28    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v32    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v33    # "pm":Landroid/content/pm/PackageManager;
    goto/16 :goto_7b2

    .line 505
    .end local v3    # "out":Ljava/io/OutputStream;
    .end local v4    # "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    .end local v17    # "packagesToBackup":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;"
    .end local v26    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v28    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v32    # "ofstream":Ljava/io/FileOutputStream;
    .end local v33    # "pm":Landroid/content/pm/PackageManager;
    .restart local v6    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v7    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v10    # "pm":Landroid/content/pm/PackageManager;
    .restart local v11    # "out":Ljava/io/OutputStream;
    .restart local v12    # "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    .restart local v13    # "packagesToBackup":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;"
    .restart local v24    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    :catch_51f
    move-exception v0

    move-object/from16 v32, v6

    move-object/from16 v28, v7

    move-object/from16 v33, v10

    move-object v3, v11

    move-object v4, v12

    move-object/from16 v17, v13

    move-object/from16 v26, v24

    move-object v1, v3

    const/4 v5, 0x1

    const/4 v6, 0x0

    .end local v6    # "ofstream":Ljava/io/FileOutputStream;
    .end local v7    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v10    # "pm":Landroid/content/pm/PackageManager;
    .end local v11    # "out":Ljava/io/OutputStream;
    .end local v12    # "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    .end local v13    # "packagesToBackup":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;"
    .end local v24    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v3    # "out":Ljava/io/OutputStream;
    .restart local v4    # "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    .restart local v17    # "packagesToBackup":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;"
    .restart local v26    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v28    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v32    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v33    # "pm":Landroid/content/pm/PackageManager;
    goto/16 :goto_831

    .line 516
    .end local v3    # "out":Ljava/io/OutputStream;
    .end local v4    # "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    .end local v17    # "packagesToBackup":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;"
    .end local v26    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v28    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v32    # "ofstream":Ljava/io/FileOutputStream;
    .end local v33    # "pm":Landroid/content/pm/PackageManager;
    .restart local v6    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v7    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v9    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v10    # "pm":Landroid/content/pm/PackageManager;
    .restart local v11    # "out":Ljava/io/OutputStream;
    .restart local v12    # "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    .restart local v13    # "packagesToBackup":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;"
    :catchall_531
    move-exception v0

    move-object/from16 v32, v6

    move-object/from16 v28, v7

    move-object/from16 v26, v9

    move-object/from16 v33, v10

    move-object v3, v11

    move-object v4, v12

    move-object/from16 v17, v13

    move-object v1, v3

    const/4 v5, 0x1

    goto :goto_570

    .line 510
    :catch_541
    move-exception v0

    move-object/from16 v32, v6

    move-object/from16 v28, v7

    move-object/from16 v26, v9

    move-object/from16 v33, v10

    move-object v3, v11

    move-object v4, v12

    move-object/from16 v17, v13

    move-object v1, v3

    const/4 v5, 0x1

    goto :goto_582

    .line 505
    :catch_551
    move-exception v0

    move-object/from16 v32, v6

    move-object/from16 v28, v7

    move-object/from16 v26, v9

    move-object/from16 v33, v10

    move-object v3, v11

    move-object v4, v12

    move-object/from16 v17, v13

    move-object v1, v3

    const/4 v5, 0x1

    goto :goto_594

    .line 516
    :catchall_561
    move-exception v0

    move-object/from16 v32, v6

    move-object/from16 v28, v7

    move-object/from16 v26, v9

    move-object/from16 v33, v10

    move-object v3, v11

    move-object v4, v12

    move-object/from16 v17, v13

    move-object v1, v3

    move v5, v8

    :goto_570
    const/4 v6, 0x0

    goto/16 :goto_6d8

    .line 510
    :catch_573
    move-exception v0

    move-object/from16 v32, v6

    move-object/from16 v28, v7

    move-object/from16 v26, v9

    move-object/from16 v33, v10

    move-object v3, v11

    move-object v4, v12

    move-object/from16 v17, v13

    move-object v1, v3

    move v5, v8

    :goto_582
    const/4 v6, 0x0

    goto/16 :goto_6eb

    .line 505
    :catch_585
    move-exception v0

    move-object/from16 v32, v6

    move-object/from16 v28, v7

    move-object/from16 v26, v9

    move-object/from16 v33, v10

    move-object v3, v11

    move-object v4, v12

    move-object/from16 v17, v13

    move-object v1, v3

    move v5, v8

    :goto_594
    const/4 v6, 0x0

    goto/16 :goto_6fd

    .line 445
    .restart local v0    # "N":I
    .local v3, "i":I
    .local v5, "headerbuf":Ljava/lang/StringBuilder;
    .restart local v16    # "encrypting":Z
    .restart local v18    # "finalOutput":Ljava/io/OutputStream;
    :cond_597
    move/from16 v30, v3

    move-object/from16 v31, v5

    move-object/from16 v32, v6

    move-object/from16 v28, v7

    move-object/from16 v26, v9

    move-object/from16 v33, v10

    move-object v3, v11

    move-object v4, v12

    move-object/from16 v17, v13

    .line 486
    .end local v5    # "headerbuf":Ljava/lang/StringBuilder;
    .end local v6    # "ofstream":Ljava/io/FileOutputStream;
    .end local v7    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v9    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v10    # "pm":Landroid/content/pm/PackageManager;
    .end local v11    # "out":Ljava/io/OutputStream;
    .end local v12    # "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    .end local v13    # "packagesToBackup":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;"
    .local v3, "out":Ljava/io/OutputStream;
    .restart local v4    # "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    .restart local v17    # "packagesToBackup":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;"
    .restart local v26    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v28    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v31    # "headerbuf":Ljava/lang/StringBuilder;
    .restart local v32    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v33    # "pm":Landroid/content/pm/PackageManager;
    :try_start_5a7
    iget-boolean v1, v14, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mKeyValue:Z
    :try_end_5a9
    .catch Landroid/os/RemoteException; {:try_start_5a7 .. :try_end_5a9} :catch_692
    .catch Ljava/lang/Exception; {:try_start_5a7 .. :try_end_5a9} :catch_68c
    .catchall {:try_start_5a7 .. :try_end_5a9} :catchall_685

    if-eqz v1, :cond_615

    .line 487
    :try_start_5ab
    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5af
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_615

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageInfo;

    .line 489
    .local v5, "keyValuePackage":Landroid/content/pm/PackageInfo;
    const-string v6, "BackupManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "--- Performing key-value backup for package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " ---"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    new-instance v6, Lcom/android/server/backup/KeyValueAdbBackupEngine;

    iget-object v7, v14, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v8, v14, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 495
    invoke-virtual {v8}, Lcom/android/server/backup/UserBackupManagerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v23

    iget-object v8, v14, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 496
    invoke-virtual {v8}, Lcom/android/server/backup/UserBackupManagerService;->getBaseStateDir()Ljava/io/File;

    move-result-object v24

    iget-object v8, v14, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 497
    invoke-virtual {v8}, Lcom/android/server/backup/UserBackupManagerService;->getDataDir()Ljava/io/File;

    move-result-object v25

    move-object/from16 v19, v6

    move-object/from16 v20, v3

    move-object/from16 v21, v5

    move-object/from16 v22, v7

    invoke-direct/range {v19 .. v25}, Lcom/android/server/backup/KeyValueAdbBackupEngine;-><init>(Ljava/io/OutputStream;Landroid/content/pm/PackageInfo;Lcom/android/server/backup/UserBackupManagerService;Landroid/content/pm/PackageManager;Ljava/io/File;Ljava/io/File;)V

    .line 498
    .local v6, "kvBackupEngine":Lcom/android/server/backup/KeyValueAdbBackupEngine;
    iget-object v7, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v7}, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->sendOnBackupPackage(Ljava/lang/String;)V

    .line 499
    invoke-virtual {v6}, Lcom/android/server/backup/KeyValueAdbBackupEngine;->backupOnePackage()V
    :try_end_601
    .catch Landroid/os/RemoteException; {:try_start_5ab .. :try_end_601} :catch_60f
    .catch Ljava/lang/Exception; {:try_start_5ab .. :try_end_601} :catch_609
    .catchall {:try_start_5ab .. :try_end_601} :catchall_602

    .line 500
    .end local v5    # "keyValuePackage":Landroid/content/pm/PackageInfo;
    .end local v6    # "kvBackupEngine":Lcom/android/server/backup/KeyValueAdbBackupEngine;
    goto :goto_5af

    .line 516
    .end local v0    # "N":I
    .end local v16    # "encrypting":Z
    .end local v18    # "finalOutput":Ljava/io/OutputStream;
    .end local v31    # "headerbuf":Ljava/lang/StringBuilder;
    :catchall_602
    move-exception v0

    move-object v1, v3

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v3, v0

    goto/16 :goto_8ad

    .line 510
    :catch_609
    move-exception v0

    move-object v1, v3

    const/4 v5, 0x1

    const/4 v6, 0x0

    goto/16 :goto_7b2

    .line 505
    :catch_60f
    move-exception v0

    move-object v1, v3

    const/4 v5, 0x1

    const/4 v6, 0x0

    goto/16 :goto_831

    .line 504
    .restart local v0    # "N":I
    .restart local v16    # "encrypting":Z
    .restart local v18    # "finalOutput":Ljava/io/OutputStream;
    .restart local v31    # "headerbuf":Ljava/lang/StringBuilder;
    :cond_615
    :try_start_615
    invoke-direct {v14, v3}, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->finalizeBackup(Ljava/io/OutputStream;)V
    :try_end_618
    .catch Landroid/os/RemoteException; {:try_start_615 .. :try_end_618} :catch_692
    .catch Ljava/lang/Exception; {:try_start_615 .. :try_end_618} :catch_68c
    .catchall {:try_start_615 .. :try_end_618} :catchall_685

    .line 517
    .end local v0    # "N":I
    .end local v16    # "encrypting":Z
    .end local v18    # "finalOutput":Ljava/io/OutputStream;
    .end local v31    # "headerbuf":Ljava/lang/StringBuilder;
    if-eqz v3, :cond_620

    .line 518
    :try_start_61a
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 519
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 521
    :cond_620
    iget-object v0, v14, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_625
    .catch Ljava/io/IOException; {:try_start_61a .. :try_end_625} :catch_626

    .line 524
    goto :goto_641

    .line 522
    :catch_626
    move-exception v0

    .line 523
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IO error closing adb backup file: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "BackupManagerService"

    invoke-static {v5, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    .end local v0    # "e":Ljava/io/IOException;
    :goto_641
    iget-object v1, v14, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 526
    :try_start_644
    iget-object v0, v14, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 527
    iget-object v0, v14, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 528
    monitor-exit v1
    :try_end_650
    .catchall {:try_start_644 .. :try_end_650} :catchall_682

    .line 529
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->sendEndBackup()V

    .line 530
    sget-object v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    if-eqz v0, :cond_65a

    .line 531
    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerYuva;->sendEndBackupCallback()V

    .line 533
    :cond_65a
    invoke-virtual {v4}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->tearDown()V

    .line 535
    const-string v0, "BackupManagerService"

    const-string v1, "Full backup pass complete."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    iget-object v0, v14, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Lcom/android/server/backup/UserBackupManagerService;->setSepWakeLock(Z)V

    .line 539
    iget-object v0, v14, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getWakelock()Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_67f

    .line 540
    iget-object v0, v14, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getWakelock()Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->release()V

    .line 544
    :cond_67f
    move-object v11, v3

    goto/16 :goto_8a7

    .line 528
    :catchall_682
    move-exception v0

    :try_start_683
    monitor-exit v1
    :try_end_684
    .catchall {:try_start_683 .. :try_end_684} :catchall_682

    throw v0

    .line 516
    :catchall_685
    move-exception v0

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, v3

    move-object v3, v0

    goto/16 :goto_8ad

    .line 510
    :catch_68c
    move-exception v0

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, v3

    goto/16 :goto_7b2

    .line 505
    :catch_692
    move-exception v0

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, v3

    goto/16 :goto_831

    .line 516
    .end local v3    # "out":Ljava/io/OutputStream;
    .end local v4    # "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    .end local v17    # "packagesToBackup":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;"
    .end local v26    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v28    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v32    # "ofstream":Ljava/io/FileOutputStream;
    .end local v33    # "pm":Landroid/content/pm/PackageManager;
    .local v6, "ofstream":Ljava/io/FileOutputStream;
    .restart local v7    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v9    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v10    # "pm":Landroid/content/pm/PackageManager;
    .restart local v11    # "out":Ljava/io/OutputStream;
    .restart local v12    # "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    .restart local v13    # "packagesToBackup":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;"
    :catchall_698
    move-exception v0

    move-object/from16 v32, v6

    move-object/from16 v28, v7

    move v5, v8

    move-object/from16 v26, v9

    move-object/from16 v33, v10

    move-object v3, v11

    move-object/from16 v17, v13

    move v6, v4

    move-object v4, v12

    goto :goto_6d7

    .line 510
    :catch_6a8
    move-exception v0

    move-object/from16 v32, v6

    move-object/from16 v28, v7

    move v5, v8

    move-object/from16 v26, v9

    move-object/from16 v33, v10

    move-object v3, v11

    move-object/from16 v17, v13

    move v6, v4

    move-object v4, v12

    goto :goto_6ea

    .line 505
    :catch_6b8
    move-exception v0

    move-object/from16 v32, v6

    move-object/from16 v28, v7

    move v5, v8

    move-object/from16 v26, v9

    move-object/from16 v33, v10

    move-object v3, v11

    move-object/from16 v17, v13

    move v6, v4

    move-object v4, v12

    goto :goto_6fc

    .line 516
    :catchall_6c8
    move-exception v0

    move-object/from16 v32, v6

    move-object/from16 v28, v7

    move v5, v8

    move-object/from16 v26, v9

    move-object/from16 v33, v10

    move-object v3, v11

    move-object v4, v12

    move-object/from16 v17, v13

    const/4 v6, 0x0

    :goto_6d7
    move-object v1, v3

    :goto_6d8
    move-object v3, v0

    .end local v6    # "ofstream":Ljava/io/FileOutputStream;
    .end local v7    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v9    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v10    # "pm":Landroid/content/pm/PackageManager;
    .end local v11    # "out":Ljava/io/OutputStream;
    .end local v12    # "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    .end local v13    # "packagesToBackup":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;"
    .restart local v3    # "out":Ljava/io/OutputStream;
    .restart local v4    # "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    .restart local v17    # "packagesToBackup":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;"
    .restart local v26    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v28    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v32    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v33    # "pm":Landroid/content/pm/PackageManager;
    goto/16 :goto_8ad

    .line 510
    .end local v3    # "out":Ljava/io/OutputStream;
    .end local v4    # "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    .end local v17    # "packagesToBackup":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;"
    .end local v26    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v28    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v32    # "ofstream":Ljava/io/FileOutputStream;
    .end local v33    # "pm":Landroid/content/pm/PackageManager;
    .restart local v6    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v7    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v9    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v10    # "pm":Landroid/content/pm/PackageManager;
    .restart local v11    # "out":Ljava/io/OutputStream;
    .restart local v12    # "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    .restart local v13    # "packagesToBackup":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;"
    :catch_6db
    move-exception v0

    move-object/from16 v32, v6

    move-object/from16 v28, v7

    move v5, v8

    move-object/from16 v26, v9

    move-object/from16 v33, v10

    move-object v3, v11

    move-object v4, v12

    move-object/from16 v17, v13

    const/4 v6, 0x0

    :goto_6ea
    move-object v1, v3

    .end local v6    # "ofstream":Ljava/io/FileOutputStream;
    .end local v7    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v9    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v10    # "pm":Landroid/content/pm/PackageManager;
    .end local v11    # "out":Ljava/io/OutputStream;
    .end local v12    # "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    .end local v13    # "packagesToBackup":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;"
    .restart local v3    # "out":Ljava/io/OutputStream;
    .restart local v4    # "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    .restart local v17    # "packagesToBackup":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;"
    .restart local v26    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v28    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v32    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v33    # "pm":Landroid/content/pm/PackageManager;
    :goto_6eb
    goto/16 :goto_7b2

    .line 505
    .end local v3    # "out":Ljava/io/OutputStream;
    .end local v4    # "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    .end local v17    # "packagesToBackup":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;"
    .end local v26    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v28    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v32    # "ofstream":Ljava/io/FileOutputStream;
    .end local v33    # "pm":Landroid/content/pm/PackageManager;
    .restart local v6    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v7    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v9    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v10    # "pm":Landroid/content/pm/PackageManager;
    .restart local v11    # "out":Ljava/io/OutputStream;
    .restart local v12    # "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    .restart local v13    # "packagesToBackup":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;"
    :catch_6ed
    move-exception v0

    move-object/from16 v32, v6

    move-object/from16 v28, v7

    move v5, v8

    move-object/from16 v26, v9

    move-object/from16 v33, v10

    move-object v3, v11

    move-object v4, v12

    move-object/from16 v17, v13

    const/4 v6, 0x0

    :goto_6fc
    move-object v1, v3

    .end local v6    # "ofstream":Ljava/io/FileOutputStream;
    .end local v7    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v9    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v10    # "pm":Landroid/content/pm/PackageManager;
    .end local v11    # "out":Ljava/io/OutputStream;
    .end local v12    # "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    .end local v13    # "packagesToBackup":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;"
    .restart local v3    # "out":Ljava/io/OutputStream;
    .restart local v4    # "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    .restart local v17    # "packagesToBackup":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;"
    .restart local v26    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v28    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v32    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v33    # "pm":Landroid/content/pm/PackageManager;
    :goto_6fd
    goto/16 :goto_831

    .line 419
    .end local v4    # "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    .end local v17    # "packagesToBackup":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;"
    .end local v26    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v28    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v32    # "ofstream":Ljava/io/FileOutputStream;
    .end local v33    # "pm":Landroid/content/pm/PackageManager;
    .local v1, "out":Ljava/io/OutputStream;
    .local v3, "finalOutput":Ljava/io/OutputStream;
    .local v5, "headerbuf":Ljava/lang/StringBuilder;
    .restart local v6    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v7    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v9    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v10    # "pm":Landroid/content/pm/PackageManager;
    .restart local v12    # "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    .restart local v13    # "packagesToBackup":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;"
    .restart local v16    # "encrypting":Z
    :catch_6ff
    move-exception v0

    move-object/from16 v31, v5

    move-object/from16 v32, v6

    move-object/from16 v28, v7

    move v5, v8

    move-object/from16 v26, v9

    move-object/from16 v33, v10

    move v6, v11

    move-object v4, v12

    move-object/from16 v17, v13

    .end local v5    # "headerbuf":Ljava/lang/StringBuilder;
    .end local v6    # "ofstream":Ljava/io/FileOutputStream;
    .end local v7    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v9    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v10    # "pm":Landroid/content/pm/PackageManager;
    .end local v12    # "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    .end local v13    # "packagesToBackup":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;"
    .restart local v4    # "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    .restart local v17    # "packagesToBackup":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;"
    .restart local v26    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v28    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v31    # "headerbuf":Ljava/lang/StringBuilder;
    .restart local v32    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v33    # "pm":Landroid/content/pm/PackageManager;
    :goto_70f
    move-object v7, v0

    .line 421
    .local v7, "e":Ljava/lang/Exception;
    :try_start_710
    const-string v0, "BackupManagerService"

    const-string v8, "Unable to emit archive header"

    invoke-static {v0, v8, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 422
    sget-object v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    if-eqz v0, :cond_725

    .line 423
    sget-object v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerYuva;->setMemorySaverBackupFail()V

    .line 424
    sget-object v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerYuva;->sendEndBackupCallback()V
    :try_end_725
    .catch Landroid/os/RemoteException; {:try_start_710 .. :try_end_725} :catch_790
    .catch Ljava/lang/Exception; {:try_start_710 .. :try_end_725} :catch_78e
    .catchall {:try_start_710 .. :try_end_725} :catchall_8ab

    .line 517
    :cond_725
    if-eqz v1, :cond_72d

    .line 518
    :try_start_727
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 519
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 521
    :cond_72d
    iget-object v0, v14, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_732
    .catch Ljava/io/IOException; {:try_start_727 .. :try_end_732} :catch_733

    .line 524
    goto :goto_74e

    .line 522
    :catch_733
    move-exception v0

    .line 523
    .restart local v0    # "e":Ljava/io/IOException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "IO error closing adb backup file: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "BackupManagerService"

    invoke-static {v9, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    .end local v0    # "e":Ljava/io/IOException;
    :goto_74e
    iget-object v8, v14, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v8

    .line 526
    :try_start_751
    iget-object v0, v14, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 527
    iget-object v0, v14, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 528
    monitor-exit v8
    :try_end_75c
    .catchall {:try_start_751 .. :try_end_75c} :catchall_78b

    .line 529
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->sendEndBackup()V

    .line 530
    sget-object v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    if-eqz v0, :cond_766

    .line 531
    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerYuva;->sendEndBackupCallback()V

    .line 533
    :cond_766
    invoke-virtual {v4}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->tearDown()V

    .line 535
    const-string v0, "BackupManagerService"

    const-string v5, "Full backup pass complete."

    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    iget-object v0, v14, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0, v6}, Lcom/android/server/backup/UserBackupManagerService;->setSepWakeLock(Z)V

    .line 539
    iget-object v0, v14, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getWakelock()Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_78a

    .line 540
    iget-object v0, v14, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getWakelock()Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->release()V

    .line 426
    :cond_78a
    return-void

    .line 528
    :catchall_78b
    move-exception v0

    :try_start_78c
    monitor-exit v8
    :try_end_78d
    .catchall {:try_start_78c .. :try_end_78d} :catchall_78b

    throw v0

    .line 510
    .end local v3    # "finalOutput":Ljava/io/OutputStream;
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v16    # "encrypting":Z
    .end local v31    # "headerbuf":Ljava/lang/StringBuilder;
    :catch_78e
    move-exception v0

    goto :goto_7b2

    .line 505
    :catch_790
    move-exception v0

    goto/16 :goto_831

    .line 516
    .end local v4    # "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    .end local v17    # "packagesToBackup":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;"
    .end local v26    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v28    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v32    # "ofstream":Ljava/io/FileOutputStream;
    .end local v33    # "pm":Landroid/content/pm/PackageManager;
    .restart local v6    # "ofstream":Ljava/io/FileOutputStream;
    .local v7, "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v9    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v10    # "pm":Landroid/content/pm/PackageManager;
    .restart local v12    # "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    .restart local v13    # "packagesToBackup":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;"
    :catchall_793
    move-exception v0

    move-object/from16 v32, v6

    move-object/from16 v28, v7

    move v5, v8

    move-object/from16 v26, v9

    move-object/from16 v33, v10

    move v6, v11

    move-object v4, v12

    move-object/from16 v17, v13

    move-object v3, v0

    .end local v6    # "ofstream":Ljava/io/FileOutputStream;
    .end local v7    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v9    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v10    # "pm":Landroid/content/pm/PackageManager;
    .end local v12    # "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    .end local v13    # "packagesToBackup":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;"
    .restart local v4    # "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    .restart local v17    # "packagesToBackup":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;"
    .restart local v26    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v28    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v32    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v33    # "pm":Landroid/content/pm/PackageManager;
    goto/16 :goto_8ad

    .line 510
    .end local v4    # "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    .end local v17    # "packagesToBackup":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;"
    .end local v26    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v28    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v32    # "ofstream":Ljava/io/FileOutputStream;
    .end local v33    # "pm":Landroid/content/pm/PackageManager;
    .restart local v6    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v7    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v9    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v10    # "pm":Landroid/content/pm/PackageManager;
    .restart local v12    # "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    .restart local v13    # "packagesToBackup":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;"
    :catch_7a4
    move-exception v0

    move-object/from16 v32, v6

    move-object/from16 v28, v7

    move v5, v8

    move-object/from16 v26, v9

    move-object/from16 v33, v10

    move v6, v11

    move-object v4, v12

    move-object/from16 v17, v13

    .line 511
    .end local v6    # "ofstream":Ljava/io/FileOutputStream;
    .end local v7    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v9    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v10    # "pm":Landroid/content/pm/PackageManager;
    .end local v12    # "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    .end local v13    # "packagesToBackup":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;"
    .local v0, "e":Ljava/lang/Exception;
    .restart local v4    # "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    .restart local v17    # "packagesToBackup":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;"
    .restart local v26    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v28    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v32    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v33    # "pm":Landroid/content/pm/PackageManager;
    :goto_7b2
    :try_start_7b2
    const-string v3, "BackupManagerService"

    const-string v7, "Internal exception during full backup"

    invoke-static {v3, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 512
    sget-object v3, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    if-eqz v3, :cond_7c2

    .line 513
    sget-object v3, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    invoke-virtual {v3}, Lcom/android/server/backup/BackupManagerYuva;->setMemorySaverBackupFail()V
    :try_end_7c2
    .catchall {:try_start_7b2 .. :try_end_7c2} :catchall_8ab

    .line 517
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_7c2
    if-eqz v1, :cond_7ca

    .line 518
    :try_start_7c4
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 519
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 521
    :cond_7ca
    iget-object v0, v14, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_7cf
    .catch Ljava/io/IOException; {:try_start_7c4 .. :try_end_7cf} :catch_7d0

    .line 524
    goto :goto_7eb

    .line 522
    :catch_7d0
    move-exception v0

    .line 523
    .local v0, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IO error closing adb backup file: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v7, "BackupManagerService"

    invoke-static {v7, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    .end local v0    # "e":Ljava/io/IOException;
    :goto_7eb
    iget-object v3, v14, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v3

    .line 526
    :try_start_7ee
    iget-object v0, v14, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 527
    iget-object v0, v14, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 528
    monitor-exit v3
    :try_end_7f9
    .catchall {:try_start_7ee .. :try_end_7f9} :catchall_820

    .line 529
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->sendEndBackup()V

    .line 530
    sget-object v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    if-eqz v0, :cond_803

    .line 531
    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerYuva;->sendEndBackupCallback()V

    .line 533
    :cond_803
    invoke-virtual {v4}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->tearDown()V

    .line 535
    const-string v0, "BackupManagerService"

    const-string v3, "Full backup pass complete."

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    iget-object v0, v14, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0, v6}, Lcom/android/server/backup/UserBackupManagerService;->setSepWakeLock(Z)V

    .line 539
    iget-object v0, v14, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getWakelock()Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_8a6

    .line 540
    goto/16 :goto_89d

    .line 528
    :catchall_820
    move-exception v0

    :try_start_821
    monitor-exit v3
    :try_end_822
    .catchall {:try_start_821 .. :try_end_822} :catchall_820

    throw v0

    .line 505
    .end local v4    # "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    .end local v17    # "packagesToBackup":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;"
    .end local v26    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v28    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v32    # "ofstream":Ljava/io/FileOutputStream;
    .end local v33    # "pm":Landroid/content/pm/PackageManager;
    .restart local v6    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v7    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v9    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v10    # "pm":Landroid/content/pm/PackageManager;
    .restart local v12    # "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    .restart local v13    # "packagesToBackup":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;"
    :catch_823
    move-exception v0

    move-object/from16 v32, v6

    move-object/from16 v28, v7

    move v5, v8

    move-object/from16 v26, v9

    move-object/from16 v33, v10

    move v6, v11

    move-object v4, v12

    move-object/from16 v17, v13

    .line 506
    .end local v6    # "ofstream":Ljava/io/FileOutputStream;
    .end local v7    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v9    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v10    # "pm":Landroid/content/pm/PackageManager;
    .end local v12    # "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    .end local v13    # "packagesToBackup":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;"
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v4    # "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    .restart local v17    # "packagesToBackup":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;"
    .restart local v26    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v28    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v32    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v33    # "pm":Landroid/content/pm/PackageManager;
    :goto_831
    :try_start_831
    const-string v3, "BackupManagerService"

    const-string v7, "App died during full backup"

    invoke-static {v3, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    sget-object v3, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    if-eqz v3, :cond_841

    .line 508
    sget-object v3, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    invoke-virtual {v3}, Lcom/android/server/backup/BackupManagerYuva;->setMemorySaverBackupFail()V
    :try_end_841
    .catchall {:try_start_831 .. :try_end_841} :catchall_8ab

    .line 517
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_841
    if-eqz v1, :cond_849

    .line 518
    :try_start_843
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 519
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 521
    :cond_849
    iget-object v0, v14, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_84e
    .catch Ljava/io/IOException; {:try_start_843 .. :try_end_84e} :catch_84f

    .line 524
    goto :goto_86a

    .line 522
    :catch_84f
    move-exception v0

    .line 523
    .local v0, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IO error closing adb backup file: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v7, "BackupManagerService"

    invoke-static {v7, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    .end local v0    # "e":Ljava/io/IOException;
    :goto_86a
    iget-object v3, v14, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v3

    .line 526
    :try_start_86d
    iget-object v0, v14, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 527
    iget-object v0, v14, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 528
    monitor-exit v3
    :try_end_878
    .catchall {:try_start_86d .. :try_end_878} :catchall_8a8

    .line 529
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->sendEndBackup()V

    .line 530
    sget-object v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    if-eqz v0, :cond_882

    .line 531
    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerYuva;->sendEndBackupCallback()V

    .line 533
    :cond_882
    invoke-virtual {v4}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->tearDown()V

    .line 535
    const-string v0, "BackupManagerService"

    const-string v3, "Full backup pass complete."

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    iget-object v0, v14, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0, v6}, Lcom/android/server/backup/UserBackupManagerService;->setSepWakeLock(Z)V

    .line 539
    iget-object v0, v14, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getWakelock()Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_8a6

    .line 540
    :goto_89d
    iget-object v0, v14, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getWakelock()Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->release()V

    .line 544
    :cond_8a6
    move-object v11, v1

    .end local v1    # "out":Ljava/io/OutputStream;
    .restart local v11    # "out":Ljava/io/OutputStream;
    :goto_8a7
    return-void

    .line 528
    .end local v11    # "out":Ljava/io/OutputStream;
    .restart local v1    # "out":Ljava/io/OutputStream;
    :catchall_8a8
    move-exception v0

    :try_start_8a9
    monitor-exit v3
    :try_end_8aa
    .catchall {:try_start_8a9 .. :try_end_8aa} :catchall_8a8

    throw v0

    .line 516
    :catchall_8ab
    move-exception v0

    move-object v3, v0

    .line 517
    :goto_8ad
    if-eqz v1, :cond_8b5

    .line 518
    :try_start_8af
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 519
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 521
    :cond_8b5
    iget-object v0, v14, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_8ba
    .catch Ljava/io/IOException; {:try_start_8af .. :try_end_8ba} :catch_8bb

    .line 524
    goto :goto_8d6

    .line 522
    :catch_8bb
    move-exception v0

    .line 523
    .restart local v0    # "e":Ljava/io/IOException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IO error closing adb backup file: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "BackupManagerService"

    invoke-static {v8, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    .end local v0    # "e":Ljava/io/IOException;
    :goto_8d6
    iget-object v7, v14, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v7

    .line 526
    :try_start_8d9
    iget-object v0, v14, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 527
    iget-object v0, v14, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 528
    monitor-exit v7
    :try_end_8e4
    .catchall {:try_start_8d9 .. :try_end_8e4} :catchall_913

    .line 529
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->sendEndBackup()V

    .line 530
    sget-object v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    if-eqz v0, :cond_8ee

    .line 531
    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerYuva;->sendEndBackupCallback()V

    .line 533
    :cond_8ee
    invoke-virtual {v4}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->tearDown()V

    .line 535
    const-string v0, "BackupManagerService"

    const-string v5, "Full backup pass complete."

    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    iget-object v0, v14, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0, v6}, Lcom/android/server/backup/UserBackupManagerService;->setSepWakeLock(Z)V

    .line 539
    iget-object v0, v14, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getWakelock()Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_912

    .line 540
    iget-object v0, v14, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getWakelock()Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->release()V

    .line 543
    :cond_912
    throw v3

    .line 528
    :catchall_913
    move-exception v0

    :try_start_914
    monitor-exit v7
    :try_end_915
    .catchall {:try_start_914 .. :try_end_915} :catchall_913

    throw v0
.end method
