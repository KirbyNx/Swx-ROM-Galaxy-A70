.class public Lcom/android/server/pm/parsing/PackageCacher;
.super Ljava/lang/Object;
.source "PackageCacher.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PackageCacher"

.field public static final sCachedPackageReadCount:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private mCacheDir:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 51
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/android/server/pm/parsing/PackageCacher;->sCachedPackageReadCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .registers 2
    .param p1, "cacheDir"    # Ljava/io/File;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/android/server/pm/parsing/PackageCacher;->mCacheDir:Ljava/io/File;

    .line 58
    return-void
.end method

.method static changeModifiedTimeOfTheCacheIfNeeded(Ljava/io/File;Ljava/io/File;)J
    .registers 6
    .param p0, "cacheFile"    # Ljava/io/File;
    .param p1, "packageFile"    # Ljava/io/File;

    .line 236
    if-eqz p0, :cond_4c

    if-nez p1, :cond_5

    goto :goto_4c

    .line 240
    :cond_5
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_47

    .line 241
    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_47

    .line 242
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    add-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Ljava/io/File;->setLastModified(J)Z

    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cacheResult packageFile.lastModified: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", cacheFile.lastModified: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 243
    const-string v1, "PackageCacher"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    :cond_47
    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    return-wide v0

    .line 237
    :cond_4c
    :goto_4c
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public static fromCacheEntryStatic([B)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .registers 5
    .param p0, "bytes"    # [B

    .line 79
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 80
    .local v0, "p":Landroid/os/Parcel;
    array-length v1, p0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 81
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 83
    new-instance v1, Landroid/content/pm/PackageParserCacheHelper$ReadHelper;

    invoke-direct {v1, v0}, Landroid/content/pm/PackageParserCacheHelper$ReadHelper;-><init>(Landroid/os/Parcel;)V

    .line 84
    .local v1, "helper":Landroid/content/pm/PackageParserCacheHelper$ReadHelper;
    invoke-virtual {v1}, Landroid/content/pm/PackageParserCacheHelper$ReadHelper;->startAndInstall()V

    .line 87
    new-instance v2, Lcom/android/server/pm/parsing/pkg/PackageImpl;

    invoke-direct {v2, v0}, Lcom/android/server/pm/parsing/pkg/PackageImpl;-><init>(Landroid/os/Parcel;)V

    .line 89
    .local v2, "pkg":Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 91
    sget-object v3, Lcom/android/server/pm/parsing/PackageCacher;->sCachedPackageReadCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 93
    return-object v2
.end method

.method private getCacheKey(Ljava/io/File;I)Ljava/lang/String;
    .registers 5
    .param p1, "packageFile"    # Ljava/io/File;
    .param p2, "flags"    # I

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static isCacheInvalid(Lcom/android/server/pm/parsing/pkg/ParsedPackage;Ljava/io/File;)Z
    .registers 7
    .param p0, "parsed"    # Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .param p1, "packageFile"    # Ljava/io/File;

    .line 252
    const/4 v0, 0x1

    if-eqz p0, :cond_30

    if-nez p1, :cond_6

    goto :goto_30

    .line 256
    :cond_6
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 258
    .local v1, "codePath":Ljava/lang/String;
    :try_start_a
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->getCodePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2b

    .line 259
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    .line 260
    .local v2, "canonicalCodePath":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    .line 261
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->getCodePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    .line 262
    .local v3, "canonicalParsedCodePath":Ljava/lang/String;
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_29} :catch_2e

    xor-int/2addr v0, v4

    return v0

    .line 266
    .end local v2    # "canonicalCodePath":Ljava/lang/String;
    .end local v3    # "canonicalParsedCodePath":Ljava/lang/String;
    :cond_2b
    nop

    .line 267
    const/4 v0, 0x0

    return v0

    .line 264
    :catch_2e
    move-exception v2

    .line 265
    .local v2, "e":Ljava/io/IOException;
    return v0

    .line 253
    .end local v1    # "codePath":Ljava/lang/String;
    .end local v2    # "e":Ljava/io/IOException;
    :cond_30
    :goto_30
    return v0
.end method

.method private static isCacheUpToDate(Ljava/io/File;Ljava/io/File;)Z
    .registers 9
    .param p0, "packageFile"    # Ljava/io/File;
    .param p1, "cacheFile"    # Ljava/io/File;

    .line 127
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/system/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object v1

    .line 128
    .local v1, "pkg":Landroid/system/StructStat;
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/system/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object v2

    .line 129
    .local v2, "cache":Landroid/system/StructStat;
    iget-wide v3, v1, Landroid/system/StructStat;->st_mtime:J

    iget-wide v5, v2, Landroid/system/StructStat;->st_mtime:J
    :try_end_15
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_15} :catch_1b

    cmp-long v3, v3, v5

    if-gez v3, :cond_1a

    const/4 v0, 0x1

    :cond_1a
    return v0

    .line 130
    .end local v1    # "pkg":Landroid/system/StructStat;
    .end local v2    # "cache":Landroid/system/StructStat;
    :catch_1b
    move-exception v1

    .line 141
    .local v1, "ee":Landroid/system/ErrnoException;
    iget v2, v1, Landroid/system/ErrnoException;->errno:I

    sget v3, Landroid/system/OsConstants;->ENOENT:I

    if-eq v2, v3, :cond_27

    .line 142
    const-string v2, "Error while stating package cache : "

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 145
    :cond_27
    return v0
.end method

.method static synthetic lambda$cleanCachedResult$0(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)Z
    .registers 4
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "name"    # Ljava/lang/String;

    .line 225
    invoke-virtual {p2, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static toCacheEntryStatic(Lcom/android/server/pm/parsing/pkg/ParsedPackage;)[B
    .registers 4
    .param p0, "pkg"    # Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    .line 105
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 106
    .local v0, "p":Landroid/os/Parcel;
    new-instance v1, Landroid/content/pm/PackageParserCacheHelper$WriteHelper;

    invoke-direct {v1, v0}, Landroid/content/pm/PackageParserCacheHelper$WriteHelper;-><init>(Landroid/os/Parcel;)V

    .line 108
    .local v1, "helper":Landroid/content/pm/PackageParserCacheHelper$WriteHelper;
    const/4 v2, 0x0

    invoke-interface {p0, v0, v2}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->writeToParcel(Landroid/os/Parcel;I)V

    .line 110
    invoke-virtual {v1}, Landroid/content/pm/PackageParserCacheHelper$WriteHelper;->finishAndUninstall()V

    .line 112
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object v2

    .line 113
    .local v2, "serialized":[B
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 115
    return-object v2
.end method


# virtual methods
.method public cacheResult(Ljava/io/File;ILcom/android/server/pm/parsing/pkg/ParsedPackage;)V
    .registers 11
    .param p1, "packageFile"    # Ljava/io/File;
    .param p2, "flags"    # I
    .param p3, "parsed"    # Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    .line 190
    const-string v0, "PackageCacher"

    :try_start_2
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/parsing/PackageCacher;->getCacheKey(Ljava/io/File;I)Ljava/lang/String;

    move-result-object v1

    .line 191
    .local v1, "cacheKey":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/pm/parsing/PackageCacher;->mCacheDir:Ljava/io/File;

    invoke-direct {v2, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 193
    .local v2, "cacheFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 194
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_2d

    .line 195
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to delete cache file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :cond_2d
    invoke-virtual {p0, p3}, Lcom/android/server/pm/parsing/PackageCacher;->toCacheEntry(Lcom/android/server/pm/parsing/pkg/ParsedPackage;)[B

    move-result-object v3
    :try_end_31
    .catchall {:try_start_2 .. :try_end_31} :catchall_58

    .line 201
    .local v3, "cacheEntry":[B
    if-nez v3, :cond_34

    .line 202
    return-void

    .line 205
    :cond_34
    :try_start_34
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_39} :catch_4a
    .catchall {:try_start_34 .. :try_end_39} :catchall_58

    .line 206
    .local v4, "fos":Ljava/io/FileOutputStream;
    :try_start_39
    invoke-virtual {v4, v3}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_40

    .line 207
    :try_start_3c
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_3f} :catch_4a
    .catchall {:try_start_3c .. :try_end_3f} :catchall_58

    .line 210
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    goto :goto_53

    .line 205
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :catchall_40
    move-exception v5

    :try_start_41
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_44
    .catchall {:try_start_41 .. :try_end_44} :catchall_45

    goto :goto_49

    :catchall_45
    move-exception v6

    :try_start_46
    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "cacheKey":Ljava/lang/String;
    .end local v2    # "cacheFile":Ljava/io/File;
    .end local v3    # "cacheEntry":[B
    .end local p0    # "this":Lcom/android/server/pm/parsing/PackageCacher;
    .end local p1    # "packageFile":Ljava/io/File;
    .end local p2    # "flags":I
    .end local p3    # "parsed":Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    :goto_49
    throw v5
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_4a} :catch_4a
    .catchall {:try_start_46 .. :try_end_4a} :catchall_58

    .line 207
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "cacheKey":Ljava/lang/String;
    .restart local v2    # "cacheFile":Ljava/io/File;
    .restart local v3    # "cacheEntry":[B
    .restart local p0    # "this":Lcom/android/server/pm/parsing/PackageCacher;
    .restart local p1    # "packageFile":Ljava/io/File;
    .restart local p2    # "flags":I
    .restart local p3    # "parsed":Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    :catch_4a
    move-exception v4

    .line 208
    .local v4, "ioe":Ljava/io/IOException;
    :try_start_4b
    const-string v5, "Error writing cache entry."

    invoke-static {v0, v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 209
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 212
    .end local v4    # "ioe":Ljava/io/IOException;
    :goto_53
    invoke-static {v2, p1}, Lcom/android/server/pm/parsing/PackageCacher;->changeModifiedTimeOfTheCacheIfNeeded(Ljava/io/File;Ljava/io/File;)J
    :try_end_56
    .catchall {:try_start_4b .. :try_end_56} :catchall_58

    .line 216
    nop

    .end local v1    # "cacheKey":Ljava/lang/String;
    .end local v2    # "cacheFile":Ljava/io/File;
    .end local v3    # "cacheEntry":[B
    goto :goto_5e

    .line 214
    :catchall_58
    move-exception v1

    .line 215
    .local v1, "e":Ljava/lang/Throwable;
    const-string v2, "Error saving package cache."

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 217
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_5e
    return-void
.end method

.method public cleanCachedResult(Ljava/io/File;)V
    .registers 9
    .param p1, "packageFile"    # Ljava/io/File;

    .line 223
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 224
    .local v0, "packageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/pm/parsing/PackageCacher;->mCacheDir:Ljava/io/File;

    new-instance v2, Lcom/android/server/pm/parsing/-$$Lambda$PackageCacher$m5SLKIgIcu0a0YKFji5p6LENHas;

    invoke-direct {v2, v0}, Lcom/android/server/pm/parsing/-$$Lambda$PackageCacher$m5SLKIgIcu0a0YKFji5p6LENHas;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Landroid/os/FileUtils;->listFilesOrEmpty(Ljava/io/File;Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    .line 226
    .local v1, "files":[Ljava/io/File;
    array-length v2, v1

    const/4 v3, 0x0

    :goto_11
    if-ge v3, v2, :cond_34

    aget-object v4, v1, v3

    .line 227
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v5

    if-nez v5, :cond_31

    .line 228
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to clean cache file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "PackageCacher"

    invoke-static {v6, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    .end local v4    # "file":Ljava/io/File;
    :cond_31
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 231
    :cond_34
    return-void
.end method

.method protected fromCacheEntry([B)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .registers 3
    .param p1, "bytes"    # [B

    .line 73
    invoke-static {p1}, Lcom/android/server/pm/parsing/PackageCacher;->fromCacheEntryStatic([B)Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    move-result-object v0

    return-object v0
.end method

.method public getCachedResult(Ljava/io/File;I)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .registers 11
    .param p1, "packageFile"    # Ljava/io/File;
    .param p2, "flags"    # I

    .line 154
    const-string v0, "PackageCacher"

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/parsing/PackageCacher;->getCacheKey(Ljava/io/File;I)Ljava/lang/String;

    move-result-object v1

    .line 155
    .local v1, "cacheKey":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/pm/parsing/PackageCacher;->mCacheDir:Ljava/io/File;

    invoke-direct {v2, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 159
    .local v2, "cacheFile":Ljava/io/File;
    const/4 v3, 0x0

    :try_start_e
    invoke-static {p1, v2}, Lcom/android/server/pm/parsing/PackageCacher;->isCacheUpToDate(Ljava/io/File;Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_15

    .line 160
    return-object v3

    .line 163
    :cond_15
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Llibcore/io/IoUtils;->readFileAsByteArray(Ljava/lang/String;)[B

    move-result-object v4

    .line 165
    .local v4, "bytes":[B
    invoke-virtual {p0, v4}, Lcom/android/server/pm/parsing/PackageCacher;->fromCacheEntry([B)Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    move-result-object v5

    .line 166
    .local v5, "pp":Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    invoke-static {v5, p1}, Lcom/android/server/pm/parsing/PackageCacher;->isCacheInvalid(Lcom/android/server/pm/parsing/pkg/ParsedPackage;Ljava/io/File;)Z

    move-result v6

    if-eqz v6, :cond_44

    .line 167
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "invalid cache, delete "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_43
    .catchall {:try_start_e .. :try_end_43} :catchall_45

    .line 169
    return-object v3

    .line 171
    :cond_44
    return-object v5

    .line 175
    .end local v4    # "bytes":[B
    .end local v5    # "pp":Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    :catchall_45
    move-exception v4

    .line 176
    .local v4, "e":Ljava/lang/Throwable;
    const-string v5, "Error reading package cache: "

    invoke-static {v0, v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 180
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 181
    return-object v3
.end method

.method protected toCacheEntry(Lcom/android/server/pm/parsing/pkg/ParsedPackage;)[B
    .registers 3
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    .line 98
    invoke-static {p1}, Lcom/android/server/pm/parsing/PackageCacher;->toCacheEntryStatic(Lcom/android/server/pm/parsing/pkg/ParsedPackage;)[B

    move-result-object v0

    return-object v0
.end method
