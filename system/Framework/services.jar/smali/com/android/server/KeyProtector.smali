.class public Lcom/android/server/KeyProtector;
.super Ljava/lang/Object;
.source "KeyProtector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/KeyProtector$KeyStore;
    }
.end annotation


# static fields
.field private static final DEFAULT_IV_LEN:I = 0xc

.field private static final DEFAULT_KEY_LEN:I = 0x20

.field private static final FILE_PREFIX:Ljava/lang/String; = "ENCRYPTED_KEY_"

.field public static final LEGACY_KNOXCORE_UID:I = 0x4e2

.field private static final TAG:Ljava/lang/String; = "KeyProtector"

.field private static sInstance:Lcom/android/server/KeyProtector;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 38
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/KeyProtector;->sInstance:Lcom/android/server/KeyProtector;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;I)Ljava/lang/String;
    .registers 3
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # I

    .line 31
    invoke-static {p0, p1}, Lcom/android/server/KeyProtector;->attach(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100([B)V
    .registers 1
    .param p0, "x0"    # [B

    .line 31
    invoke-static {p0}, Lcom/android/server/KeyProtector;->clear([B)V

    return-void
.end method

.method private static attach(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4
    .param p0, "alias"    # Ljava/lang/String;
    .param p1, "userId"    # I

    .line 328
    if-eqz p0, :cond_17

    .line 329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    .line 328
    :goto_18
    return-object v0
.end method

.method private static clear([B)V
    .registers 3
    .param p0, "bytes"    # [B

    .line 321
    if-nez p0, :cond_3

    .line 322
    return-void

    .line 324
    :cond_3
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1}, Ljava/util/Arrays;->fill([BIIB)V

    .line 325
    return-void
.end method

.method private deleteFile(ILjava/lang/String;)Z
    .registers 7
    .param p1, "userId"    # I
    .param p2, "alias"    # Ljava/lang/String;

    .line 298
    const/4 v0, 0x0

    .line 299
    .local v0, "result":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 300
    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "ENCRYPTED_KEY_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 302
    .local v1, "path":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteFile - File path : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "KeyProtector"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    if-nez v1, :cond_49

    .line 304
    const-string v2, "Null path..."

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    const/4 v2, 0x0

    return v2

    .line 308
    :cond_49
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 309
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_5e

    .line 311
    :try_start_54
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v3
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_58} :catch_5a

    move v0, v3

    .line 314
    goto :goto_5e

    .line 312
    :catch_5a
    move-exception v3

    .line 313
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 317
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_5e
    :goto_5e
    return v0
.end method

.method public static declared-synchronized getInstance()Lcom/android/server/KeyProtector;
    .registers 2

    const-class v0, Lcom/android/server/KeyProtector;

    monitor-enter v0

    .line 43
    :try_start_3
    sget-object v1, Lcom/android/server/KeyProtector;->sInstance:Lcom/android/server/KeyProtector;

    if-nez v1, :cond_e

    .line 44
    new-instance v1, Lcom/android/server/KeyProtector;

    invoke-direct {v1}, Lcom/android/server/KeyProtector;-><init>()V

    sput-object v1, Lcom/android/server/KeyProtector;->sInstance:Lcom/android/server/KeyProtector;

    .line 46
    :cond_e
    sget-object v1, Lcom/android/server/KeyProtector;->sInstance:Lcom/android/server/KeyProtector;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    .line 42
    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getKeyStore()Lcom/android/server/KeyProtector$KeyStore;
    .registers 3

    .line 50
    new-instance v0, Lcom/android/server/KeyProtector$KeyStore;

    const/16 v1, 0x4e2

    invoke-direct {v0, v1}, Lcom/android/server/KeyProtector$KeyStore;-><init>(I)V

    return-object v0
.end method

.method private readFile(ILjava/lang/String;)[B
    .registers 9
    .param p1, "userId"    # I
    .param p2, "alias"    # Ljava/lang/String;

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 233
    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ENCRYPTED_KEY_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 235
    .local v0, "path":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "readFile - File path : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KeyProtector"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    if-nez v0, :cond_49

    .line 237
    const-string v1, "Null path..."

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    const/4 v1, 0x0

    return-object v1

    .line 240
    :cond_49
    const/4 v1, 0x0

    .line 241
    .local v1, "payload":[B
    const/4 v2, 0x0

    .line 243
    .local v2, "fis":Ljava/io/FileInputStream;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 244
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_8c

    .line 246
    :try_start_56
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v2, v4

    .line 247
    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I

    move-result v4

    .line 248
    .local v4, "length":I
    new-array v5, v4, [B

    move-object v1, v5

    .line 249
    invoke-virtual {v2, v1}, Ljava/io/FileInputStream;->read([B)I
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_66} :catch_79
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_66} :catch_6f
    .catchall {:try_start_56 .. :try_end_66} :catchall_6d

    .line 255
    nop

    .line 257
    .end local v4    # "length":I
    :try_start_67
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6a
    .catch Ljava/io/IOException; {:try_start_67 .. :try_end_6a} :catch_6b

    .line 258
    :goto_6a
    goto :goto_8c

    :catch_6b
    move-exception v4

    goto :goto_6a

    .line 255
    :catchall_6d
    move-exception v4

    goto :goto_83

    .line 252
    :catch_6f
    move-exception v4

    .line 253
    .local v4, "e":Ljava/lang/Exception;
    :try_start_70
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_73
    .catchall {:try_start_70 .. :try_end_73} :catchall_6d

    .line 255
    .end local v4    # "e":Ljava/lang/Exception;
    if-eqz v2, :cond_8c

    .line 257
    :try_start_75
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_78
    .catch Ljava/io/IOException; {:try_start_75 .. :try_end_78} :catch_6b

    goto :goto_6a

    .line 250
    :catch_79
    move-exception v4

    .line 251
    .local v4, "e":Ljava/io/IOException;
    :try_start_7a
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7d
    .catchall {:try_start_7a .. :try_end_7d} :catchall_6d

    .line 255
    .end local v4    # "e":Ljava/io/IOException;
    if-eqz v2, :cond_8c

    .line 257
    :try_start_7f
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_82
    .catch Ljava/io/IOException; {:try_start_7f .. :try_end_82} :catch_6b

    goto :goto_6a

    .line 255
    :goto_83
    if-eqz v2, :cond_8b

    .line 257
    :try_start_85
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_88
    .catch Ljava/io/IOException; {:try_start_85 .. :try_end_88} :catch_89

    .line 258
    :goto_88
    goto :goto_8b

    :catch_89
    move-exception v5

    goto :goto_88

    .line 260
    :cond_8b
    :goto_8b
    throw v4

    .line 262
    :cond_8c
    :goto_8c
    return-object v1
.end method

.method private writeToFile(ILjava/lang/String;[B)Z
    .registers 10
    .param p1, "userId"    # I
    .param p2, "alias"    # Ljava/lang/String;
    .param p3, "payload"    # [B

    .line 266
    const/4 v0, 0x0

    .line 267
    .local v0, "res":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 268
    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "ENCRYPTED_KEY_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 270
    .local v1, "path":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "writeToFile - File path : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "KeyProtector"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    if-nez v1, :cond_4a

    .line 272
    const-string v2, "Null path..."

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    const/4 v2, 0x0

    return v2

    .line 276
    :cond_4a
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 277
    .local v2, "file":Ljava/io/File;
    const/4 v3, 0x0

    .line 279
    .local v3, "fos":Ljava/io/FileOutputStream;
    :try_start_50
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v3, v4

    .line 280
    invoke-virtual {v3, p3}, Ljava/io/FileOutputStream;->write([B)V

    .line 281
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V
    :try_end_5c
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_5c} :catch_70
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_5c} :catch_66
    .catchall {:try_start_50 .. :try_end_5c} :catchall_64

    .line 282
    const/4 v0, 0x1

    .line 288
    nop

    .line 290
    :try_start_5e
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_61
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_61} :catch_62

    .line 291
    :goto_61
    goto :goto_7a

    :catch_62
    move-exception v4

    goto :goto_61

    .line 288
    :catchall_64
    move-exception v4

    goto :goto_7b

    .line 285
    :catch_66
    move-exception v4

    .line 286
    .local v4, "e":Ljava/lang/Exception;
    :try_start_67
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6a
    .catchall {:try_start_67 .. :try_end_6a} :catchall_64

    .line 288
    .end local v4    # "e":Ljava/lang/Exception;
    if-eqz v3, :cond_7a

    .line 290
    :try_start_6c
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_6f
    .catch Ljava/io/IOException; {:try_start_6c .. :try_end_6f} :catch_62

    goto :goto_61

    .line 283
    :catch_70
    move-exception v4

    .line 284
    .local v4, "e":Ljava/io/IOException;
    :try_start_71
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_74
    .catchall {:try_start_71 .. :try_end_74} :catchall_64

    .line 288
    .end local v4    # "e":Ljava/io/IOException;
    if-eqz v3, :cond_7a

    .line 290
    :try_start_76
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_79
    .catch Ljava/io/IOException; {:try_start_76 .. :try_end_79} :catch_62

    goto :goto_61

    .line 294
    :cond_7a
    :goto_7a
    return v0

    .line 288
    :goto_7b
    if-eqz v3, :cond_83

    .line 290
    :try_start_7d
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_80
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_80} :catch_81

    .line 291
    :goto_80
    goto :goto_83

    :catch_81
    move-exception v5

    goto :goto_80

    .line 293
    :cond_83
    :goto_83
    throw v4
.end method


# virtual methods
.method public decryptFast([B[B)[B
    .registers 12
    .param p1, "key"    # [B
    .param p2, "encrypted"    # [B

    .line 208
    const-string v0, "KeyProtector"

    if-eqz p1, :cond_41

    array-length v1, p1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_41

    if-nez p2, :cond_c

    goto :goto_41

    .line 213
    :cond_c
    const/4 v1, 0x0

    .line 215
    .local v1, "plaintext":[B
    const/4 v2, 0x0

    const/16 v3, 0xc

    :try_start_10
    invoke-static {p2, v2, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    .line 216
    .local v2, "iv":[B
    array-length v4, p2

    invoke-static {p2, v3, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    .line 217
    .local v3, "ciphertext":[B
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    const-string v5, "AES"

    invoke-direct {v4, p1, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 218
    .local v4, "secretKey":Ljavax/crypto/SecretKey;
    const-string v5, "AES/GCM/NoPadding"

    invoke-static {v5}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v5

    .line 222
    .local v5, "cipher":Ljavax/crypto/Cipher;
    const/4 v6, 0x2

    new-instance v7, Ljavax/crypto/spec/GCMParameterSpec;

    const/16 v8, 0x80

    invoke-direct {v7, v8, v2}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    invoke-virtual {v5, v6, v4, v7}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 223
    invoke-virtual {v5, v3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_35} :catch_37

    move-object v1, v0

    .line 227
    .end local v2    # "iv":[B
    .end local v3    # "ciphertext":[B
    .end local v4    # "secretKey":Ljavax/crypto/SecretKey;
    .end local v5    # "cipher":Ljavax/crypto/Cipher;
    goto :goto_40

    .line 224
    :catch_37
    move-exception v2

    .line 225
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "fast decryption - Unexpected error"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 228
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_40
    return-object v1

    .line 209
    .end local v1    # "plaintext":[B
    :cond_41
    :goto_41
    const-string v1, "fast decryption - Only supported for 32-bytes key"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    const/4 v0, 0x0

    return-object v0
.end method

.method public delete(Ljava/lang/String;I)Z
    .registers 10
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 156
    nop

    .line 157
    invoke-direct {p0}, Lcom/android/server/KeyProtector;->getKeyStore()Lcom/android/server/KeyProtector$KeyStore;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/KeyProtector$KeyStore;->exists(Ljava/lang/String;I)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_24

    .line 158
    invoke-direct {p0}, Lcom/android/server/KeyProtector;->getKeyStore()Lcom/android/server/KeyProtector$KeyStore;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/KeyProtector$KeyStore;->exists(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-direct {p0}, Lcom/android/server/KeyProtector;->getKeyStore()Lcom/android/server/KeyProtector$KeyStore;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/KeyProtector$KeyStore;->deleteSecretKey(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_22

    goto :goto_24

    :cond_22
    move v0, v1

    goto :goto_25

    :cond_24
    :goto_24
    move v0, v2

    .line 159
    .local v0, "keyDeletionResult":Z
    :goto_25
    invoke-direct {p0, p2, p1}, Lcom/android/server/KeyProtector;->deleteFile(ILjava/lang/String;)Z

    move-result v3

    .line 161
    .local v3, "keyFileDeletionResult":Z
    const-string v4, "KeyProtector"

    if-nez v0, :cond_45

    .line 162
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected failure while delete key with "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Lcom/android/server/KeyProtector;->attach(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :cond_45
    if-nez v3, :cond_5f

    .line 165
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected failure while delete file with "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Lcom/android/server/KeyProtector;->attach(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :cond_5f
    if-eqz v0, :cond_64

    if-eqz v3, :cond_64

    move v1, v2

    :cond_64
    return v1
.end method

.method public encryptFast([B[B)[B
    .registers 11
    .param p1, "key"    # [B
    .param p2, "plaintext"    # [B

    .line 181
    const-string v0, "KeyProtector"

    if-eqz p1, :cond_4c

    array-length v1, p1

    const/16 v2, 0x20

    if-eq v1, v2, :cond_a

    goto :goto_4c

    .line 186
    :cond_a
    const/4 v1, 0x0

    .line 187
    .local v1, "encrypted":[B
    :try_start_b
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_10} :catch_42

    .line 188
    .local v2, "out":Ljava/io/ByteArrayOutputStream;
    :try_start_10
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    const-string v4, "AES"

    invoke-direct {v3, p1, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 189
    .local v3, "secretKey":Ljavax/crypto/SecretKey;
    const-string v4, "AES/GCM/NoPadding"

    invoke-static {v4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v4

    .line 193
    .local v4, "cipher":Ljavax/crypto/Cipher;
    const/4 v5, 0x1

    invoke-virtual {v4, v5, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 194
    invoke-virtual {v4, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v5

    .line 195
    .local v5, "ciphertext":[B
    invoke-virtual {v4}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object v6

    .line 197
    .local v6, "iv":[B
    invoke-virtual {v2, v6}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 198
    invoke-virtual {v2, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 199
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7
    :try_end_33
    .catchall {:try_start_10 .. :try_end_33} :catchall_38

    move-object v1, v7

    .line 200
    .end local v3    # "secretKey":Ljavax/crypto/SecretKey;
    .end local v4    # "cipher":Ljavax/crypto/Cipher;
    .end local v5    # "ciphertext":[B
    .end local v6    # "iv":[B
    :try_start_34
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_37} :catch_42

    .line 203
    .end local v2    # "out":Ljava/io/ByteArrayOutputStream;
    goto :goto_4b

    .line 187
    .restart local v2    # "out":Ljava/io/ByteArrayOutputStream;
    :catchall_38
    move-exception v3

    :try_start_39
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_3d

    goto :goto_41

    :catchall_3d
    move-exception v4

    :try_start_3e
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "encrypted":[B
    .end local p0    # "this":Lcom/android/server/KeyProtector;
    .end local p1    # "key":[B
    .end local p2    # "plaintext":[B
    :goto_41
    throw v3
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_42} :catch_42

    .line 200
    .end local v2    # "out":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "encrypted":[B
    .restart local p0    # "this":Lcom/android/server/KeyProtector;
    .restart local p1    # "key":[B
    .restart local p2    # "plaintext":[B
    :catch_42
    move-exception v2

    .line 201
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "fast encryption - Unexpected error"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 204
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_4b
    return-object v1

    .line 182
    .end local v1    # "encrypted":[B
    :cond_4c
    :goto_4c
    const-string v1, "fast encryption - Only supported for 32-bytes key"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    const/4 v0, 0x0

    return-object v0
.end method

.method public exists(Ljava/lang/String;I)Z
    .registers 6
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 171
    const/4 v0, 0x0

    .line 173
    .local v0, "result":Z
    nop

    .line 174
    invoke-direct {p0}, Lcom/android/server/KeyProtector;->getKeyStore()Lcom/android/server/KeyProtector$KeyStore;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/android/server/KeyProtector$KeyStore;->exists(Ljava/lang/String;I)Z

    move-result v1

    move v0, v1

    if-eqz v1, :cond_30

    .line 175
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Key exists in the KeyStore. ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KeyProtector"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :cond_30
    return v0
.end method

.method public protect([BLjava/lang/String;I)Z
    .registers 12
    .param p1, "key"    # [B
    .param p2, "alias"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 54
    const/4 v0, 0x0

    .line 55
    .local v0, "encryptedKey":[B
    const/4 v1, 0x0

    .line 57
    .local v1, "iv":[B
    const-string v2, "KeyProtector"

    const/4 v3, 0x0

    if-eqz p1, :cond_9a

    if-nez p2, :cond_b

    goto/16 :goto_9a

    .line 66
    :cond_b
    :try_start_b
    invoke-direct {p0}, Lcom/android/server/KeyProtector;->getKeyStore()Lcom/android/server/KeyProtector$KeyStore;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Lcom/android/server/KeyProtector$KeyStore;->setSecretKey(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_86

    .line 67
    invoke-direct {p0}, Lcom/android/server/KeyProtector;->getKeyStore()Lcom/android/server/KeyProtector$KeyStore;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Lcom/android/server/KeyProtector$KeyStore;->getSecretKey(Ljava/lang/String;I)Ljavax/crypto/SecretKey;

    move-result-object v4

    .line 68
    .local v4, "encryptionKey":Ljava/security/Key;
    const-string v5, "AES/GCM/NoPadding"

    invoke-static {v5}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v5

    .line 71
    .local v5, "cipher":Ljavax/crypto/Cipher;
    const/4 v6, 0x1

    invoke-virtual {v5, v6, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 72
    invoke-virtual {v5, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v7

    move-object v0, v7

    .line 73
    invoke-virtual {v5}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object v7
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_30} :catch_8e

    move-object v1, v7

    .line 74
    .end local v4    # "encryptionKey":Ljava/security/Key;
    .end local v5    # "cipher":Ljavax/crypto/Cipher;
    nop

    .line 84
    nop

    .line 89
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 90
    .local v4, "outputStream":Ljava/io/ByteArrayOutputStream;
    if-nez v1, :cond_3c

    move v5, v3

    goto :goto_3d

    :cond_3c
    array-length v5, v1

    .line 92
    .local v5, "length":I
    :goto_3d
    const/16 v7, 0xc

    if-eq v5, v7, :cond_59

    .line 93
    :try_start_41
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid iv length : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    invoke-virtual {p0, p2, p3}, Lcom/android/server/KeyProtector;->delete(Ljava/lang/String;I)Z

    .line 98
    return v3

    .line 100
    :cond_59
    invoke-virtual {v4, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 101
    invoke-virtual {v4, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_5f} :catch_79

    .line 107
    nop

    .line 109
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    invoke-direct {p0, p3, p2, v7}, Lcom/android/server/KeyProtector;->writeToFile(ILjava/lang/String;[B)Z

    move-result v7

    if-nez v7, :cond_73

    .line 110
    const-string v6, "Failed to write into file..."

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-virtual {p0, p2, p3}, Lcom/android/server/KeyProtector;->delete(Ljava/lang/String;I)Z

    .line 116
    return v3

    .line 118
    :cond_73
    const-string v3, "Successfully wrote into file!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    return v6

    .line 102
    :catch_79
    move-exception v6

    .line 103
    .local v6, "e":Ljava/io/IOException;
    const-string v7, "Failed to concatenate byte arrays"

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 105
    invoke-virtual {p0, p2, p3}, Lcom/android/server/KeyProtector;->delete(Ljava/lang/String;I)Z

    .line 106
    return v3

    .line 75
    .end local v4    # "outputStream":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "length":I
    .end local v6    # "e":Ljava/io/IOException;
    :cond_86
    :try_start_86
    new-instance v2, Ljava/lang/Exception;

    const-string v4, "Unexpected failure while set key"

    invoke-direct {v2, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .end local v0    # "encryptedKey":[B
    .end local v1    # "iv":[B
    .end local p0    # "this":Lcom/android/server/KeyProtector;
    .end local p1    # "key":[B
    .end local p2    # "alias":Ljava/lang/String;
    .end local p3    # "userId":I
    throw v2
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_8e} :catch_8e

    .line 77
    .restart local v0    # "encryptedKey":[B
    .restart local v1    # "iv":[B
    .restart local p0    # "this":Lcom/android/server/KeyProtector;
    .restart local p1    # "key":[B
    .restart local p2    # "alias":Ljava/lang/String;
    .restart local p3    # "userId":I
    :catch_8e
    move-exception v2

    .line 78
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 82
    invoke-direct {p0}, Lcom/android/server/KeyProtector;->getKeyStore()Lcom/android/server/KeyProtector$KeyStore;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Lcom/android/server/KeyProtector$KeyStore;->deleteSecretKey(Ljava/lang/String;I)Z

    .line 83
    return v3

    .line 58
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_9a
    :goto_9a
    const-string v4, "Wrong input parameter..."

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    return v3
.end method

.method public release(Ljava/lang/String;I)[B
    .registers 12
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 126
    const/4 v0, 0x0

    .line 128
    .local v0, "decryptedKey":[B
    invoke-direct {p0, p2, p1}, Lcom/android/server/KeyProtector;->readFile(ILjava/lang/String;)[B

    move-result-object v1

    .line 129
    .local v1, "encryptedFile":[B
    if-eqz v1, :cond_45

    .line 131
    const/4 v2, 0x0

    const/16 v3, 0xc

    :try_start_a
    invoke-static {v1, v2, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    .line 132
    .local v2, "iv":[B
    array-length v4, v1

    invoke-static {v1, v3, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_13} :catch_38

    .line 137
    .local v3, "encryptedKey":[B
    nop

    .line 140
    :try_start_14
    invoke-direct {p0}, Lcom/android/server/KeyProtector;->getKeyStore()Lcom/android/server/KeyProtector$KeyStore;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Lcom/android/server/KeyProtector$KeyStore;->getSecretKey(Ljava/lang/String;I)Ljavax/crypto/SecretKey;

    move-result-object v4

    .line 141
    .local v4, "decryptionKey":Ljavax/crypto/SecretKey;
    const-string v5, "AES/GCM/NoPadding"

    invoke-static {v5}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v5

    .line 145
    .local v5, "cipher":Ljavax/crypto/Cipher;
    const/4 v6, 0x2

    new-instance v7, Ljavax/crypto/spec/GCMParameterSpec;

    const/16 v8, 0x80

    invoke-direct {v7, v8, v2}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    invoke-virtual {v5, v6, v4, v7}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 146
    invoke-virtual {v5, v3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v6
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_31} :catch_33

    move-object v0, v6

    .line 149
    .end local v4    # "decryptionKey":Ljavax/crypto/SecretKey;
    .end local v5    # "cipher":Ljavax/crypto/Cipher;
    goto :goto_45

    .line 147
    :catch_33
    move-exception v4

    .line 148
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_45

    .line 133
    .end local v2    # "iv":[B
    .end local v3    # "encryptedKey":[B
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_38
    move-exception v2

    .line 134
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "KeyProtector"

    const-string v4, "Failed in copying array..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 136
    const/4 v3, 0x0

    return-object v3

    .line 152
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_45
    :goto_45
    return-object v0
.end method
