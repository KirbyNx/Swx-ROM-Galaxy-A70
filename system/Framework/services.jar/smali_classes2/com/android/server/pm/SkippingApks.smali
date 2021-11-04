.class Lcom/android/server/pm/SkippingApks;
.super Ljava/lang/Object;
.source "SkippingApks.java"


# instance fields
.field private mSkippingApkList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/SkippingApks;->mSkippingApkList:Ljava/util/ArrayList;

    .line 26
    invoke-virtual {p0}, Lcom/android/server/pm/SkippingApks;->initSkippingApkList()V

    .line 27
    return-void
.end method

.method private addSkippingApksFromFile(Ljava/lang/String;)V
    .registers 4
    .param p1, "filePath"    # Ljava/lang/String;

    .line 83
    invoke-static {p1}, Lcom/android/server/pm/SkippingApks;->getApkNamesFromFile(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 84
    .local v0, "apkNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/pm/SkippingApks;->mSkippingApkList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 85
    return-void
.end method

.method private static getApkNamesFromFile(Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .param p0, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 98
    .local v0, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 100
    .local v1, "dis":Ljava/io/DataInputStream;
    :try_start_6
    new-instance v2, Ljava/io/DataInputStream;

    new-instance v3, Ljava/io/BufferedInputStream;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v1, v2

    .line 103
    invoke-virtual {v1}, Ljava/io/DataInputStream;->available()I

    move-result v2

    if-lez v2, :cond_46

    .line 104
    const/4 v2, 0x0

    .line 105
    .local v2, "strNumOfPackages":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 106
    if-eqz v2, :cond_2f

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2f

    goto :goto_46

    .line 107
    :cond_2f
    new-instance v3, Ljava/io/FileNotFoundException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FileNotFoundException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .end local v0    # "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "dis":Ljava/io/DataInputStream;
    .end local p0    # "filePath":Ljava/lang/String;
    throw v3

    .line 111
    .end local v2    # "strNumOfPackages":Ljava/lang/String;
    .restart local v0    # "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v1    # "dis":Ljava/io/DataInputStream;
    .restart local p0    # "filePath":Ljava/lang/String;
    :cond_46
    :goto_46
    invoke-virtual {v1}, Ljava/io/DataInputStream;->available()I

    move-result v2

    if-eqz v2, :cond_59

    .line 112
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 113
    .local v2, "strPackageName":Ljava/lang/String;
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_57
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_57} :catch_76
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_57} :catch_6f
    .catchall {:try_start_6 .. :try_end_57} :catchall_63

    .line 114
    nop

    .end local v2    # "strPackageName":Ljava/lang/String;
    goto :goto_46

    .line 120
    :cond_59
    nop

    .line 122
    :try_start_5a
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_5d} :catch_5e

    .line 125
    :goto_5d
    goto :goto_7d

    .line 123
    :catch_5e
    move-exception v2

    .line 124
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .end local v2    # "e":Ljava/io/IOException;
    goto :goto_5d

    .line 120
    :catchall_63
    move-exception v2

    if-eqz v1, :cond_6e

    .line 122
    :try_start_66
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_69
    .catch Ljava/io/IOException; {:try_start_66 .. :try_end_69} :catch_6a

    .line 125
    goto :goto_6e

    .line 123
    :catch_6a
    move-exception v3

    .line 124
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 127
    .end local v3    # "e":Ljava/io/IOException;
    :cond_6e
    :goto_6e
    throw v2

    .line 117
    :catch_6f
    move-exception v2

    .line 120
    if-eqz v1, :cond_7d

    .line 122
    :try_start_72
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V

    goto :goto_5d

    .line 115
    :catch_76
    move-exception v2

    .line 120
    if-eqz v1, :cond_7d

    .line 122
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_7c
    .catch Ljava/io/IOException; {:try_start_72 .. :try_end_7c} :catch_5e

    goto :goto_5d

    .line 128
    :cond_7d
    :goto_7d
    return-object v0
.end method

.method private isFileExists(Ljava/lang/String;)Z
    .registers 3
    .param p1, "filePath"    # Ljava/lang/String;

    .line 79
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method private removeSkippingApksFromFile(Ljava/lang/String;)V
    .registers 6
    .param p1, "filePath"    # Ljava/lang/String;

    .line 88
    invoke-static {p1}, Lcom/android/server/pm/SkippingApks;->getApkNamesFromFile(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 89
    .local v0, "apkNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 90
    .local v2, "apkName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/pm/SkippingApks;->mSkippingApkList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 91
    iget-object v3, p0, Lcom/android/server/pm/SkippingApks;->mSkippingApkList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 93
    .end local v2    # "apkName":Ljava/lang/String;
    :cond_21
    goto :goto_8

    .line 94
    :cond_22
    return-void
.end method


# virtual methods
.method public addSkippingPackage(Ljava/lang/String;)Z
    .registers 3
    .param p1, "apkName"    # Ljava/lang/String;

    .line 136
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/android/server/pm/SkippingApks;->mSkippingApkList:Ljava/util/ArrayList;

    .line 137
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 138
    iget-object v0, p0, Lcom/android/server/pm/SkippingApks;->mSkippingApkList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    const/4 v0, 0x1

    return v0

    .line 141
    :cond_15
    const/4 v0, 0x0

    return v0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 156
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 157
    const-string v0, "SkippingApks:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/android/server/pm/SkippingApks;->mSkippingApkList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 159
    .local v1, "apkName":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  name : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 160
    .end local v1    # "apkName":Ljava/lang/String;
    goto :goto_e

    .line 161
    :cond_2f
    return-void
.end method

.method public getSkippingApkList()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 132
    iget-object v0, p0, Lcom/android/server/pm/SkippingApks;->mSkippingApkList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public initSkippingApkList()V
    .registers 10

    .line 30
    iget-object v0, p0, Lcom/android/server/pm/SkippingApks;->mSkippingApkList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 34
    const-string/jumbo v0, "persist.sys.omc_etcpath"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 35
    .local v0, "omcPath":Ljava/lang/String;
    const-string v2, "/data/omc/etc/enforceskippingpackages.txt"

    invoke-direct {p0, v2}, Lcom/android/server/pm/SkippingApks;->isFileExists(Ljava/lang/String;)Z

    move-result v2

    const-string v3, ""

    if-eqz v2, :cond_1b

    .line 36
    const-string v2, "/data/omc/etc/enforceskippingpackages.txt"

    .local v2, "apkListPath":Ljava/lang/String;
    goto/16 :goto_91

    .line 37
    .end local v2    # "apkListPath":Ljava/lang/String;
    :cond_1b
    if-eqz v0, :cond_84

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_84

    .line 38
    const-string/jumbo v2, "ro.boot.activatedid"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 39
    .local v2, "activatedId":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/enforceskippingpackages_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".txt"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 40
    .local v4, "activatedIdFilePath":Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/android/server/pm/SkippingApks;->isFileExists(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4c

    .line 41
    move-object v5, v4

    move-object v2, v5

    .local v5, "apkListPath":Ljava/lang/String;
    goto :goto_83

    .line 43
    .end local v5    # "apkListPath":Ljava/lang/String;
    :cond_4c
    const-string/jumbo v7, "ro.csc.countryiso_code"

    invoke-static {v7, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 44
    .local v7, "countryIso":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 45
    .local v5, "countryIsoFilePath":Ljava/lang/String;
    invoke-direct {p0, v5}, Lcom/android/server/pm/SkippingApks;->isFileExists(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_71

    .line 46
    move-object v6, v5

    move-object v2, v6

    .local v6, "apkListPath":Ljava/lang/String;
    goto :goto_83

    .line 48
    .end local v6    # "apkListPath":Ljava/lang/String;
    :cond_71
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "/enforceskippingpackages.txt"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v2, v6

    .line 51
    .end local v4    # "activatedIdFilePath":Ljava/lang/String;
    .end local v5    # "countryIsoFilePath":Ljava/lang/String;
    .end local v7    # "countryIso":Ljava/lang/String;
    .local v2, "apkListPath":Ljava/lang/String;
    :goto_83
    goto :goto_91

    .end local v2    # "apkListPath":Ljava/lang/String;
    :cond_84
    const-string v2, "/system/csc_contents/enforceskippingpackages.txt"

    invoke-direct {p0, v2}, Lcom/android/server/pm/SkippingApks;->isFileExists(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8f

    .line 52
    const-string v2, "/system/csc_contents/enforceskippingpackages.txt"

    .restart local v2    # "apkListPath":Ljava/lang/String;
    goto :goto_91

    .line 54
    .end local v2    # "apkListPath":Ljava/lang/String;
    :cond_8f
    const-string v2, "/system/etc/enforceskippingpackages.txt"

    .line 56
    .restart local v2    # "apkListPath":Ljava/lang/String;
    :goto_91
    invoke-direct {p0, v2}, Lcom/android/server/pm/SkippingApks;->addSkippingApksFromFile(Ljava/lang/String;)V

    .line 60
    const-string/jumbo v4, "persist.sys.omcnw_path"

    invoke-static {v4, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 61
    .local v1, "omcNwPath":Ljava/lang/String;
    if-eqz v1, :cond_bd

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_bd

    .line 62
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/etc/enforceinstallpackages_omcnw.txt"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 63
    invoke-direct {p0, v2}, Lcom/android/server/pm/SkippingApks;->isFileExists(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_bd

    .line 64
    invoke-direct {p0, v2}, Lcom/android/server/pm/SkippingApks;->removeSkippingApksFromFile(Ljava/lang/String;)V

    .line 69
    :cond_bd
    new-instance v3, Lcom/android/server/pm/AdditionalSkippingApkListParser;

    invoke-direct {v3}, Lcom/android/server/pm/AdditionalSkippingApkListParser;-><init>()V

    .line 70
    .local v3, "skippingApkListParser":Lcom/android/server/pm/AdditionalSkippingApkListParser;
    invoke-virtual {v3}, Lcom/android/server/pm/AdditionalSkippingApkListParser;->hasAdditionalSkippingApkList()Z

    move-result v4

    if-eqz v4, :cond_e0

    .line 71
    invoke-virtual {v3}, Lcom/android/server/pm/AdditionalSkippingApkListParser;->getAdditionalSkippingApkList()Ljava/util/List;

    move-result-object v4

    .line 72
    .local v4, "skippingApkList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_d0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_e0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 73
    .local v6, "apk":Ljava/lang/String;
    invoke-virtual {p0, v6}, Lcom/android/server/pm/SkippingApks;->addSkippingPackage(Ljava/lang/String;)Z

    .line 74
    .end local v6    # "apk":Ljava/lang/String;
    goto :goto_d0

    .line 76
    .end local v4    # "skippingApkList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_e0
    return-void
.end method

.method public isSkippingApk(Ljava/lang/String;)Z
    .registers 5
    .param p1, "apkName"    # Ljava/lang/String;

    .line 145
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 146
    iget-object v0, p0, Lcom/android/server/pm/SkippingApks;->mSkippingApkList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 147
    .local v1, "apkNameInList":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 148
    const/4 v0, 0x1

    return v0

    .line 150
    .end local v1    # "apkNameInList":Ljava/lang/String;
    :cond_20
    goto :goto_c

    .line 152
    :cond_21
    const/4 v0, 0x0

    return v0
.end method
