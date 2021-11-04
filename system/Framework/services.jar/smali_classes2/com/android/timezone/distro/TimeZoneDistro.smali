.class public final Lcom/android/timezone/distro/TimeZoneDistro;
.super Ljava/lang/Object;
.source "TimeZoneDistro.java"


# static fields
.field private static final BUFFER_SIZE:I = 0x2000

.field public static final DISTRO_VERSION_FILE_NAME:Ljava/lang/String; = "distro_version"

.field public static final FILE_NAME:Ljava/lang/String; = "distro.zip"

.field public static final ICU_DATA_FILE_NAME:Ljava/lang/String; = "icu/icu_tzdata.dat"

.field private static final MAX_GET_ENTRY_CONTENTS_SIZE:J = 0x20000L

.field public static final TELEPHONYLOOKUP_FILE_NAME:Ljava/lang/String; = "telephonylookup.xml"

.field public static final TZDATA_FILE_NAME:Ljava/lang/String; = "tzdata"

.field public static final TZLOOKUP_FILE_NAME:Ljava/lang/String; = "tzlookup.xml"


# instance fields
.field private final inputStream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 2
    .param p1, "inputStream"    # Ljava/io/InputStream;

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Lcom/android/timezone/distro/TimeZoneDistro;->inputStream:Ljava/io/InputStream;

    .line 80
    return-void
.end method

.method public constructor <init>([B)V
    .registers 3
    .param p1, "bytes"    # [B

    .line 72
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, v0}, Lcom/android/timezone/distro/TimeZoneDistro;-><init>(Ljava/io/InputStream;)V

    .line 73
    return-void
.end method

.method static extractZipSafely(Ljava/io/InputStream;Ljava/io/File;Z)V
    .registers 12
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "targetDir"    # Ljava/io/File;
    .param p2, "makeWorldReadable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 134
    invoke-static {p1, p2}, Lcom/android/timezone/distro/FileUtils;->ensureDirectoriesExist(Ljava/io/File;Z)V

    .line 136
    new-instance v0, Ljava/util/zip/ZipInputStream;

    invoke-direct {v0, p0}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 137
    .local v0, "zipInputStream":Ljava/util/zip/ZipInputStream;
    const/16 v1, 0x2000

    :try_start_a
    new-array v1, v1, [B

    .line 139
    .local v1, "buffer":[B
    :goto_c
    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v2

    move-object v3, v2

    .local v3, "entry":Ljava/util/zip/ZipEntry;
    if-eqz v2, :cond_63

    .line 142
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v2

    .line 145
    .local v2, "name":Ljava/lang/String;
    invoke-static {p1, v2}, Lcom/android/timezone/distro/FileUtils;->createSubFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 147
    .local v4, "entryFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_25

    .line 148
    invoke-static {v4, p2}, Lcom/android/timezone/distro/FileUtils;->ensureDirectoriesExist(Ljava/io/File;Z)V

    goto :goto_58

    .line 151
    :cond_25
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_37

    .line 152
    nop

    .line 153
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    .line 152
    invoke-static {v5, p2}, Lcom/android/timezone/distro/FileUtils;->ensureDirectoriesExist(Ljava/io/File;Z)V

    .line 156
    :cond_37
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3c
    .catchall {:try_start_a .. :try_end_3c} :catchall_67

    .line 158
    .local v5, "fos":Ljava/io/FileOutputStream;
    :goto_3c
    :try_start_3c
    invoke-virtual {v0, v1}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v6

    move v7, v6

    .local v7, "count":I
    const/4 v8, -0x1

    if-eq v6, v8, :cond_49

    .line 159
    const/4 v6, 0x0

    invoke-virtual {v5, v1, v6, v7}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_3c

    .line 162
    :cond_49
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/FileDescriptor;->sync()V
    :try_end_50
    .catchall {:try_start_3c .. :try_end_50} :catchall_59

    .line 163
    .end local v7    # "count":I
    :try_start_50
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 165
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    if-eqz p2, :cond_58

    .line 166
    invoke-static {v4}, Lcom/android/timezone/distro/FileUtils;->makeWorldReadable(Ljava/io/File;)V
    :try_end_58
    .catchall {:try_start_50 .. :try_end_58} :catchall_67

    .line 169
    .end local v2    # "name":Ljava/lang/String;
    .end local v4    # "entryFile":Ljava/io/File;
    :cond_58
    :goto_58
    goto :goto_c

    .line 156
    .restart local v2    # "name":Ljava/lang/String;
    .restart local v4    # "entryFile":Ljava/io/File;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    :catchall_59
    move-exception v6

    :try_start_5a
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_5d
    .catchall {:try_start_5a .. :try_end_5d} :catchall_5e

    goto :goto_62

    :catchall_5e
    move-exception v7

    :try_start_5f
    invoke-virtual {v6, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    .end local p0    # "is":Ljava/io/InputStream;
    .end local p1    # "targetDir":Ljava/io/File;
    .end local p2    # "makeWorldReadable":Z
    :goto_62
    throw v6
    :try_end_63
    .catchall {:try_start_5f .. :try_end_63} :catchall_67

    .line 170
    .end local v1    # "buffer":[B
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "entry":Ljava/util/zip/ZipEntry;
    .end local v4    # "entryFile":Ljava/io/File;
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v0    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    .restart local p0    # "is":Ljava/io/InputStream;
    .restart local p1    # "targetDir":Ljava/io/File;
    .restart local p2    # "makeWorldReadable":Z
    :cond_63
    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->close()V

    .line 171
    .end local v0    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    return-void

    .line 136
    .restart local v0    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    :catchall_67
    move-exception v1

    :try_start_68
    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_6b
    .catchall {:try_start_68 .. :try_end_6b} :catchall_6c

    goto :goto_70

    :catchall_6c
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_70
    throw v1
.end method

.method private static getEntryContents(Ljava/io/InputStream;Ljava/lang/String;)[B
    .registers 10
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "entryName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95
    new-instance v0, Ljava/util/zip/ZipInputStream;

    invoke-direct {v0, p0}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 97
    .local v0, "zipInputStream":Ljava/util/zip/ZipInputStream;
    :goto_5
    :try_start_5
    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v1

    move-object v2, v1

    .local v2, "entry":Ljava/util/zip/ZipEntry;
    if-eqz v1, :cond_70

    .line 98
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v1

    .line 100
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_17

    .line 101
    goto :goto_5

    .line 104
    :cond_17
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v3

    const-wide/32 v5, 0x20000

    cmp-long v3, v3, v5

    if-gtz v3, :cond_4d

    .line 107
    const/16 v3, 0x2000

    new-array v3, v3, [B

    .line 108
    .local v3, "buffer":[B
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_2b
    .catchall {:try_start_5 .. :try_end_2b} :catchall_75

    .line 110
    .local v4, "baos":Ljava/io/ByteArrayOutputStream;
    :goto_2b
    :try_start_2b
    invoke-virtual {v0, v3}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v5

    move v6, v5

    .local v6, "count":I
    const/4 v7, -0x1

    if-eq v5, v7, :cond_38

    .line 111
    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_2b

    .line 113
    :cond_38
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5
    :try_end_3c
    .catchall {:try_start_2b .. :try_end_3c} :catchall_43

    .line 114
    :try_start_3c
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_75

    .line 118
    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->close()V

    .line 113
    return-object v5

    .line 108
    .end local v6    # "count":I
    :catchall_43
    move-exception v5

    :try_start_44
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_47
    .catchall {:try_start_44 .. :try_end_47} :catchall_48

    goto :goto_4c

    :catchall_48
    move-exception v6

    :try_start_49
    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    .end local p0    # "is":Ljava/io/InputStream;
    .end local p1    # "entryName":Ljava/lang/String;
    :goto_4c
    throw v5

    .line 105
    .end local v3    # "buffer":[B
    .end local v4    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    .restart local p0    # "is":Ljava/io/InputStream;
    .restart local p1    # "entryName":Ljava/lang/String;
    :cond_4d
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Entry "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " too large: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    .end local p0    # "is":Ljava/io/InputStream;
    .end local p1    # "entryName":Ljava/lang/String;
    throw v3
    :try_end_70
    .catchall {:try_start_49 .. :try_end_70} :catchall_75

    .line 117
    .end local v1    # "name":Ljava/lang/String;
    .restart local v0    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    .restart local p0    # "is":Ljava/io/InputStream;
    .restart local p1    # "entryName":Ljava/lang/String;
    :cond_70
    const/4 v1, 0x0

    .line 118
    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->close()V

    .line 117
    return-object v1

    .line 95
    .end local v2    # "entry":Ljava/util/zip/ZipEntry;
    :catchall_75
    move-exception v1

    :try_start_76
    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_79
    .catchall {:try_start_76 .. :try_end_79} :catchall_7a

    goto :goto_7e

    :catchall_7a
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_7e
    throw v1
.end method


# virtual methods
.method public extractTo(Ljava/io/File;)V
    .registers 4
    .param p1, "targetDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 126
    iget-object v0, p0, Lcom/android/timezone/distro/TimeZoneDistro;->inputStream:Ljava/io/InputStream;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/android/timezone/distro/TimeZoneDistro;->extractZipSafely(Ljava/io/InputStream;Ljava/io/File;Z)V

    .line 127
    return-void
.end method

.method public getDistroVersion()Lcom/android/timezone/distro/DistroVersion;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/timezone/distro/DistroException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/android/timezone/distro/TimeZoneDistro;->inputStream:Ljava/io/InputStream;

    const-string v1, "distro_version"

    invoke-static {v0, v1}, Lcom/android/timezone/distro/TimeZoneDistro;->getEntryContents(Ljava/io/InputStream;Ljava/lang/String;)[B

    move-result-object v0

    .line 88
    .local v0, "contents":[B
    if-eqz v0, :cond_f

    .line 91
    invoke-static {v0}, Lcom/android/timezone/distro/DistroVersion;->fromBytes([B)Lcom/android/timezone/distro/DistroVersion;

    move-result-object v1

    return-object v1

    .line 89
    :cond_f
    new-instance v1, Lcom/android/timezone/distro/DistroException;

    const-string v2, "Distro version file entry not found"

    invoke-direct {v1, v2}, Lcom/android/timezone/distro/DistroException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
