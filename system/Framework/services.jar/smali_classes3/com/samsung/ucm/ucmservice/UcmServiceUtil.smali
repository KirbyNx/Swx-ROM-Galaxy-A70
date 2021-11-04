.class public Lcom/samsung/ucm/ucmservice/UcmServiceUtil;
.super Ljava/lang/Object;
.source "UcmServiceUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UcmServiceUtil"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static compareSignatures([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)Z
    .registers 9
    .param p0, "s1"    # [Landroid/content/pm/Signature;
    .param p1, "s2"    # [Landroid/content/pm/Signature;

    .line 98
    const-string v0, "UcmServiceUtil"

    const/4 v1, 0x0

    if-nez p0, :cond_b

    .line 99
    const-string v2, "Signature s1 is null"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    return v1

    .line 102
    :cond_b
    if-nez p1, :cond_13

    .line 103
    const-string v2, "Signature s2 is null"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    return v1

    .line 107
    :cond_13
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 108
    .local v2, "set1":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/pm/Signature;>;"
    array-length v3, p0

    move v4, v1

    :goto_1a
    if-ge v4, v3, :cond_24

    aget-object v5, p0, v4

    .line 109
    .local v5, "sig":Landroid/content/pm/Signature;
    invoke-virtual {v2, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 108
    .end local v5    # "sig":Landroid/content/pm/Signature;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    .line 111
    :cond_24
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 112
    .local v3, "set2":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/pm/Signature;>;"
    array-length v4, p1

    move v5, v1

    :goto_2b
    if-ge v5, v4, :cond_35

    aget-object v6, p1, v5

    .line 113
    .local v6, "sig":Landroid/content/pm/Signature;
    invoke-virtual {v3, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 112
    .end local v6    # "sig":Landroid/content/pm/Signature;
    add-int/lit8 v5, v5, 0x1

    goto :goto_2b

    .line 116
    :cond_35
    invoke-virtual {v2, v3}, Ljava/util/HashSet;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_42

    .line 117
    const-string v1, "  Signature match"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    const/4 v0, 0x1

    return v0

    .line 120
    :cond_42
    const-string v4, "  Signature doesn\'t match"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    return v1
.end method

.method static isSystemApp(Landroid/content/Context;Ljava/lang/String;I)Z
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 81
    const-string v0, "isSystemApp exception e -"

    const-string v1, "UcmServiceUtil"

    const/4 v2, 0x0

    :try_start_5
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    const/16 v4, 0x40

    invoke-interface {v3, p1, v4, p2}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 84
    .local v3, "targetPkgInfo":Landroid/content/pm/PackageInfo;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "android"

    invoke-virtual {v5, v6, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 87
    .local v4, "sys":Landroid/content/pm/PackageInfo;
    if-eqz v3, :cond_2a

    iget-object v5, v3, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v5, :cond_2a

    iget-object v5, v4, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    iget-object v6, v3, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-static {v5, v6}, Lcom/samsung/ucm/ucmservice/UcmServiceUtil;->compareSignatures([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)Z

    move-result v0
    :try_end_27
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_27} :catch_3f
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_27} :catch_2b

    if-eqz v0, :cond_2a

    const/4 v2, 0x1

    :cond_2a
    return v2

    .line 91
    .end local v3    # "targetPkgInfo":Landroid/content/pm/PackageInfo;
    .end local v4    # "sys":Landroid/content/pm/PackageInfo;
    :catch_2b
    move-exception v3

    .line 92
    .local v3, "e1":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    return v2

    .line 88
    .end local v3    # "e1":Ljava/lang/Exception;
    :catch_3f
    move-exception v3

    .line 89
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    return v2
.end method

.method static readIntFromFile(Ljava/lang/String;)I
    .registers 4
    .param p0, "filePath"    # Ljava/lang/String;

    .line 22
    invoke-static {p0}, Lcom/samsung/ucm/ucmservice/UcmServiceUtil;->readStrFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 24
    .local v0, "str":Ljava/lang/String;
    const/4 v1, 0x0

    :try_start_5
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_9
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_9} :catch_c
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_9} :catch_a

    return v1

    .line 27
    :catch_a
    move-exception v2

    .line 28
    .local v2, "e":Ljava/lang/NumberFormatException;
    return v1

    .line 25
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :catch_c
    move-exception v2

    .line 26
    .local v2, "e":Ljava/lang/NullPointerException;
    return v1
.end method

.method static readStrFromFile(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "filePath"    # Ljava/lang/String;

    .line 33
    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_b} :catch_22
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_b} :catch_1d

    .line 34
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_b
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2
    :try_end_f
    .catchall {:try_start_b .. :try_end_f} :catchall_13

    .line 35
    :try_start_f
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_12
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_12} :catch_22
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_12} :catch_1d

    .line 34
    return-object v2

    .line 33
    :catchall_13
    move-exception v2

    :try_start_14
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_18

    goto :goto_1c

    :catchall_18
    move-exception v3

    :try_start_19
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "filePath":Ljava/lang/String;
    :goto_1c
    throw v2
    :try_end_1d
    .catch Ljava/io/FileNotFoundException; {:try_start_19 .. :try_end_1d} :catch_22
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1d} :catch_1d

    .line 37
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local p0    # "filePath":Ljava/lang/String;
    :catch_1d
    move-exception v1

    .line 38
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 40
    .end local v1    # "e":Ljava/io/IOException;
    return-object v0

    .line 35
    :catch_22
    move-exception v1

    .line 36
    .local v1, "e":Ljava/io/FileNotFoundException;
    return-object v0
.end method

.method static saveDataToFile([BLjava/lang/String;)Z
    .registers 8
    .param p0, "data"    # [B
    .param p1, "filePath"    # Ljava/lang/String;

    .line 50
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 51
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    .line 52
    .local v1, "existFile":Z
    const-string v2, "UcmServiceUtil"

    if-eqz v1, :cond_18

    .line 53
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v3

    .line 54
    .local v3, "deleteFile":Z
    if-nez v3, :cond_18

    .line 55
    const-string v4, "failed to delete the existing file"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    .end local v3    # "deleteFile":Z
    :cond_18
    :try_start_18
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1d} :catch_30

    .line 59
    .local v3, "fos":Ljava/io/FileOutputStream;
    :try_start_1d
    invoke-virtual {v3, p0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_26

    .line 60
    :try_start_20
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_23} :catch_30

    .line 65
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    nop

    .line 66
    const/4 v2, 0x1

    return v2

    .line 58
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :catchall_26
    move-exception v4

    :try_start_27
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_2b

    goto :goto_2f

    :catchall_2b
    move-exception v5

    :try_start_2c
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "existFile":Z
    .end local p0    # "data":[B
    .end local p1    # "filePath":Ljava/lang/String;
    :goto_2f
    throw v4
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_30} :catch_30

    .line 60
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v0    # "file":Ljava/io/File;
    .restart local v1    # "existFile":Z
    .restart local p0    # "data":[B
    .restart local p1    # "filePath":Ljava/lang/String;
    :catch_30
    move-exception v3

    .line 61
    .local v3, "e":Ljava/io/IOException;
    const-string v4, "saveDataToFile. write. IOException."

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 63
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 64
    const/4 v2, 0x0

    return v2
.end method

.method static saveDataToFile([BLjava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .param p0, "data"    # [B
    .param p1, "dirPath"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;

    .line 44
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 45
    .local v0, "ucmDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/samsung/ucm/ucmservice/UcmServiceUtil;->saveDataToFile([BLjava/lang/String;)Z

    move-result v1

    return v1
.end method
