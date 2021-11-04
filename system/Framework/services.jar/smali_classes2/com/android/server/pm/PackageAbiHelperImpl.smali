.class final Lcom/android/server/pm/PackageAbiHelperImpl;
.super Ljava/lang/Object;
.source "PackageAbiHelperImpl.java"

# interfaces
.implements Lcom/android/server/pm/PackageAbiHelper;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static calculateBundledApkRoot(Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p0, "codePathString"    # Ljava/lang/String;

    .line 59
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 61
    .local v0, "codePath":Ljava/io/File;
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/os/FileUtils;->contains(Ljava/io/File;Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 62
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v1

    .local v1, "codeRoot":Ljava/io/File;
    goto/16 :goto_f9

    .line 63
    .end local v1    # "codeRoot":Ljava/io/File;
    :cond_15
    invoke-static {}, Landroid/os/Environment;->getOemDirectory()Ljava/io/File;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/os/FileUtils;->contains(Ljava/io/File;Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 64
    invoke-static {}, Landroid/os/Environment;->getOemDirectory()Ljava/io/File;

    move-result-object v1

    .restart local v1    # "codeRoot":Ljava/io/File;
    goto/16 :goto_f9

    .line 65
    .end local v1    # "codeRoot":Ljava/io/File;
    :cond_25
    invoke-static {}, Landroid/os/Environment;->getVendorDirectory()Ljava/io/File;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/os/FileUtils;->contains(Ljava/io/File;Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 66
    invoke-static {}, Landroid/os/Environment;->getVendorDirectory()Ljava/io/File;

    move-result-object v1

    .restart local v1    # "codeRoot":Ljava/io/File;
    goto/16 :goto_f9

    .line 67
    .end local v1    # "codeRoot":Ljava/io/File;
    :cond_35
    invoke-static {}, Landroid/os/Environment;->getOdmDirectory()Ljava/io/File;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/os/FileUtils;->contains(Ljava/io/File;Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_45

    .line 68
    invoke-static {}, Landroid/os/Environment;->getOdmDirectory()Ljava/io/File;

    move-result-object v1

    .restart local v1    # "codeRoot":Ljava/io/File;
    goto/16 :goto_f9

    .line 69
    .end local v1    # "codeRoot":Ljava/io/File;
    :cond_45
    invoke-static {}, Landroid/os/Environment;->getProductDirectory()Ljava/io/File;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/os/FileUtils;->contains(Ljava/io/File;Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_55

    .line 70
    invoke-static {}, Landroid/os/Environment;->getProductDirectory()Ljava/io/File;

    move-result-object v1

    .restart local v1    # "codeRoot":Ljava/io/File;
    goto/16 :goto_f9

    .line 71
    .end local v1    # "codeRoot":Ljava/io/File;
    :cond_55
    invoke-static {}, Landroid/os/Environment;->getSystemExtDirectory()Ljava/io/File;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/os/FileUtils;->contains(Ljava/io/File;Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_65

    .line 72
    invoke-static {}, Landroid/os/Environment;->getSystemExtDirectory()Ljava/io/File;

    move-result-object v1

    .restart local v1    # "codeRoot":Ljava/io/File;
    goto/16 :goto_f9

    .line 73
    .end local v1    # "codeRoot":Ljava/io/File;
    :cond_65
    invoke-static {}, Landroid/os/Environment;->getOdmDirectory()Ljava/io/File;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/os/FileUtils;->contains(Ljava/io/File;Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_75

    .line 74
    invoke-static {}, Landroid/os/Environment;->getOdmDirectory()Ljava/io/File;

    move-result-object v1

    .restart local v1    # "codeRoot":Ljava/io/File;
    goto/16 :goto_f9

    .line 75
    .end local v1    # "codeRoot":Ljava/io/File;
    :cond_75
    invoke-static {}, Landroid/os/Environment;->getApexDirectory()Ljava/io/File;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/os/FileUtils;->contains(Ljava/io/File;Ljava/io/File;)Z

    move-result v1

    const-string v2, "Can\'t canonicalize code path "

    const-string v3, "PackageManager"

    if-eqz v1, :cond_c9

    .line 76
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 77
    .local v1, "fullPath":Ljava/lang/String;
    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 78
    .local v4, "parts":[Ljava/lang/String;
    array-length v5, v4

    const/4 v6, 0x2

    if-le v5, v6, :cond_b1

    .line 79
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x1

    aget-object v5, v4, v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v4, v6

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    .local v2, "codeRoot":Ljava/io/File;
    goto :goto_c8

    .line 81
    .end local v2    # "codeRoot":Ljava/io/File;
    :cond_b1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    invoke-static {}, Landroid/os/Environment;->getApexDirectory()Ljava/io/File;

    move-result-object v2

    move-object v1, v2

    .line 84
    .end local v4    # "parts":[Ljava/lang/String;
    .local v1, "codeRoot":Ljava/io/File;
    :goto_c8
    goto :goto_f9

    .line 88
    .end local v1    # "codeRoot":Ljava/io/File;
    :cond_c9
    :try_start_c9
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v1

    .line 89
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    .line 91
    .local v4, "parent":Ljava/io/File;
    :goto_d1
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    move-object v6, v5

    .local v6, "tmp":Ljava/io/File;
    if-eqz v5, :cond_db

    .line 92
    move-object v1, v4

    .line 93
    move-object v4, v6

    goto :goto_d1

    .line 95
    :cond_db
    move-object v5, v1

    .line 96
    .local v5, "codeRoot":Ljava/io/File;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unrecognized code path "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " - using "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f8
    .catch Ljava/io/IOException; {:try_start_c9 .. :try_end_f8} :catch_fe

    .line 102
    move-object v1, v5

    .line 104
    .end local v4    # "parent":Ljava/io/File;
    .end local v5    # "codeRoot":Ljava/io/File;
    .end local v6    # "tmp":Ljava/io/File;
    .local v1, "codeRoot":Ljava/io/File;
    :goto_f9
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 98
    .end local v1    # "codeRoot":Ljava/io/File;
    :catch_fe
    move-exception v1

    .line 100
    .local v1, "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static deriveCodePathName(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "codePath"    # Ljava/lang/String;

    .line 111
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 112
    return-object v0

    .line 114
    :cond_4
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 115
    .local v1, "codeFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 116
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_14

    .line 117
    return-object v2

    .line 118
    :cond_14
    const-string v3, ".apk"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_41

    const-string v3, ".tmp"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_25

    goto :goto_41

    .line 122
    :cond_25
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Odd, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " doesn\'t look like an APK"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "PackageManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    return-object v0

    .line 119
    :cond_41
    :goto_41
    const/16 v0, 0x2e

    invoke-virtual {v2, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 120
    .local v0, "lastDot":I
    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private getBundledAppAbi(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/PackageAbiHelper$Abis;
    .registers 11
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "apkRoot"    # Ljava/lang/String;
    .param p3, "apkName"    # Ljava/lang/String;

    .line 230
    new-instance v0, Ljava/io/File;

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getCodePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 237
    .local v0, "codeFile":Ljava/io/File;
    invoke-static {v0}, Landroid/content/pm/PackageParser;->isApkFile(Ljava/io/File;)Z

    move-result v1

    const-string/jumbo v2, "lib"

    const/4 v3, 0x0

    if-eqz v1, :cond_3b

    .line 239
    new-instance v1, Ljava/io/File;

    new-instance v4, Ljava/io/File;

    const-string/jumbo v5, "lib64"

    invoke-direct {v4, v5, p3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, p2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    .line 241
    .local v1, "has64BitLibs":Z
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v2, p3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, p2, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v2

    .local v2, "has32BitLibs":Z
    goto :goto_8e

    .line 244
    .end local v1    # "has64BitLibs":Z
    .end local v2    # "has32BitLibs":Z
    :cond_3b
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 245
    .local v1, "rootDir":Ljava/io/File;
    sget-object v2, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_64

    sget-object v2, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    aget-object v2, v2, v3

    .line 246
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_64

    .line 247
    sget-object v2, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-static {v2}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 248
    .local v2, "isa":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v2

    .line 249
    .local v2, "has64BitLibs":Z
    goto :goto_65

    .line 250
    .end local v2    # "has64BitLibs":Z
    :cond_64
    const/4 v2, 0x0

    .line 252
    .restart local v2    # "has64BitLibs":Z
    :goto_65
    sget-object v4, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    invoke-static {v4}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8b

    sget-object v4, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    aget-object v4, v4, v3

    .line 253
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8b

    .line 254
    sget-object v4, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-static {v4}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 255
    .local v4, "isa":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v4

    .line 256
    .local v4, "has32BitLibs":Z
    move v1, v2

    move v2, v4

    goto :goto_8e

    .line 257
    .end local v4    # "has32BitLibs":Z
    :cond_8b
    const/4 v4, 0x0

    move v1, v2

    move v2, v4

    .line 261
    .local v1, "has64BitLibs":Z
    .local v2, "has32BitLibs":Z
    :goto_8e
    if-eqz v1, :cond_98

    if-nez v2, :cond_98

    .line 266
    sget-object v4, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    aget-object v3, v4, v3

    .line 267
    .local v3, "primaryCpuAbi":Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "secondaryCpuAbi":Ljava/lang/String;
    goto :goto_eb

    .line 268
    .end local v3    # "primaryCpuAbi":Ljava/lang/String;
    .end local v4    # "secondaryCpuAbi":Ljava/lang/String;
    :cond_98
    if-eqz v2, :cond_a2

    if-nez v1, :cond_a2

    .line 272
    sget-object v4, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    aget-object v3, v4, v3

    .line 273
    .restart local v3    # "primaryCpuAbi":Ljava/lang/String;
    const/4 v4, 0x0

    .restart local v4    # "secondaryCpuAbi":Ljava/lang/String;
    goto :goto_eb

    .line 274
    .end local v3    # "primaryCpuAbi":Ljava/lang/String;
    .end local v4    # "secondaryCpuAbi":Ljava/lang/String;
    :cond_a2
    if-eqz v2, :cond_e9

    if-eqz v1, :cond_e9

    .line 282
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isMultiArch()Z

    move-result v4

    if-nez v4, :cond_c7

    .line 283
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " has multiple bundled libs, but is not multiarch."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "PackageManager"

    invoke-static {v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    :cond_c7
    invoke-static {}, Lcom/android/server/pm/InstructionSets;->getPreferredInstructionSet()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ldalvik/system/VMRuntime;->is64BitInstructionSet(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_dd

    .line 288
    sget-object v4, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    aget-object v4, v4, v3

    .line 289
    .local v4, "primaryCpuAbi":Ljava/lang/String;
    sget-object v5, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    aget-object v3, v5, v3

    move-object v6, v4

    move-object v4, v3

    move-object v3, v6

    .local v3, "secondaryCpuAbi":Ljava/lang/String;
    goto :goto_eb

    .line 291
    .end local v3    # "secondaryCpuAbi":Ljava/lang/String;
    .end local v4    # "primaryCpuAbi":Ljava/lang/String;
    :cond_dd
    sget-object v4, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    aget-object v4, v4, v3

    .line 292
    .restart local v4    # "primaryCpuAbi":Ljava/lang/String;
    sget-object v5, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    aget-object v3, v5, v3

    move-object v6, v4

    move-object v4, v3

    move-object v3, v6

    .restart local v3    # "secondaryCpuAbi":Ljava/lang/String;
    goto :goto_eb

    .line 295
    .end local v3    # "secondaryCpuAbi":Ljava/lang/String;
    .end local v4    # "primaryCpuAbi":Ljava/lang/String;
    :cond_e9
    const/4 v3, 0x0

    .line 296
    .local v3, "primaryCpuAbi":Ljava/lang/String;
    const/4 v4, 0x0

    .line 298
    .local v4, "secondaryCpuAbi":Ljava/lang/String;
    :goto_eb
    new-instance v5, Lcom/android/server/pm/PackageAbiHelper$Abis;

    invoke-direct {v5, v3, v4}, Lcom/android/server/pm/PackageAbiHelper$Abis;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v5
.end method

.method private static getNativeLibraryPaths(Lcom/android/server/pm/PackageAbiHelper$Abis;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;
    .registers 21
    .param p0, "abis"    # Lcom/android/server/pm/PackageAbiHelper$Abis;
    .param p1, "appLib32InstallDir"    # Ljava/io/File;
    .param p2, "codePath"    # Ljava/lang/String;
    .param p3, "sourceDir"    # Ljava/lang/String;
    .param p4, "isSystemApp"    # Z
    .param p5, "isUpdatedSystemApp"    # Z

    .line 150
    move-object v0, p0

    new-instance v1, Ljava/io/File;

    move-object/from16 v2, p2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 151
    .local v1, "codeFile":Ljava/io/File;
    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p4, :cond_10

    if-nez p5, :cond_10

    move v5, v3

    goto :goto_11

    :cond_10
    move v5, v4

    .line 158
    .local v5, "bundledApp":Z
    :goto_11
    invoke-static {v1}, Landroid/content/pm/PackageParser;->isApkFile(Ljava/io/File;)Z

    move-result v6

    const-string/jumbo v7, "lib"

    if-eqz v6, :cond_7d

    .line 160
    if-eqz v5, :cond_69

    .line 163
    invoke-static/range {p3 .. p3}, Lcom/android/server/pm/PackageAbiHelperImpl;->calculateBundledApkRoot(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 164
    .local v6, "apkRoot":Ljava/lang/String;
    nop

    .line 165
    invoke-static {p0}, Lcom/android/server/pm/InstructionSets;->getPrimaryInstructionSet(Lcom/android/server/pm/PackageAbiHelper$Abis;)Ljava/lang/String;

    move-result-object v8

    .line 164
    invoke-static {v8}, Ldalvik/system/VMRuntime;->is64BitInstructionSet(Ljava/lang/String;)Z

    move-result v8

    .line 170
    .local v8, "is64Bit":Z
    invoke-static/range {p2 .. p2}, Lcom/android/server/pm/PackageAbiHelperImpl;->deriveCodePathName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 171
    .local v9, "apkName":Ljava/lang/String;
    const-string/jumbo v10, "lib64"

    if-eqz v8, :cond_34

    move-object v11, v10

    goto :goto_35

    :cond_34
    move-object v11, v7

    .line 172
    .local v11, "libDir":Ljava/lang/String;
    :goto_35
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v13, 0x2

    new-array v14, v13, [Ljava/lang/String;

    aput-object v11, v14, v4

    aput-object v9, v14, v3

    invoke-static {v12, v14}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v12

    .line 173
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    .line 175
    .local v12, "nativeLibraryRootDir":Ljava/lang/String;
    iget-object v14, v0, Lcom/android/server/pm/PackageAbiHelper$Abis;->secondary:Ljava/lang/String;

    if-eqz v14, :cond_65

    .line 176
    if-eqz v8, :cond_50

    goto :goto_51

    :cond_50
    move-object v7, v10

    .line 177
    .local v7, "secondaryLibDir":Ljava/lang/String;
    :goto_51
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-array v13, v13, [Ljava/lang/String;

    aput-object v7, v13, v4

    aput-object v9, v13, v3

    invoke-static {v10, v13}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 178
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 179
    .end local v7    # "secondaryLibDir":Ljava/lang/String;
    .local v3, "secondaryNativeLibraryDir":Ljava/lang/String;
    goto :goto_66

    .line 180
    .end local v3    # "secondaryNativeLibraryDir":Ljava/lang/String;
    :cond_65
    const/4 v3, 0x0

    .line 182
    .end local v6    # "apkRoot":Ljava/lang/String;
    .end local v8    # "is64Bit":Z
    .end local v9    # "apkName":Ljava/lang/String;
    .end local v11    # "libDir":Ljava/lang/String;
    .restart local v3    # "secondaryNativeLibraryDir":Ljava/lang/String;
    :goto_66
    move-object/from16 v6, p1

    goto :goto_7a

    .line 183
    .end local v3    # "secondaryNativeLibraryDir":Ljava/lang/String;
    .end local v12    # "nativeLibraryRootDir":Ljava/lang/String;
    :cond_69
    invoke-static/range {p2 .. p2}, Lcom/android/server/pm/PackageAbiHelperImpl;->deriveCodePathName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 184
    .local v3, "apkName":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    move-object/from16 v6, p1

    invoke-direct {v4, v6, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 185
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    .line 186
    .restart local v12    # "nativeLibraryRootDir":Ljava/lang/String;
    const/4 v4, 0x0

    move-object v3, v4

    .line 189
    .local v3, "secondaryNativeLibraryDir":Ljava/lang/String;
    :goto_7a
    const/4 v4, 0x0

    .line 190
    .local v4, "nativeLibraryRootRequiresIsa":Z
    move-object v7, v12

    .local v7, "nativeLibraryDir":Ljava/lang/String;
    goto :goto_ab

    .line 193
    .end local v3    # "secondaryNativeLibraryDir":Ljava/lang/String;
    .end local v4    # "nativeLibraryRootRequiresIsa":Z
    .end local v7    # "nativeLibraryDir":Ljava/lang/String;
    .end local v12    # "nativeLibraryRootDir":Ljava/lang/String;
    :cond_7d
    move-object/from16 v6, p1

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    .line 194
    .restart local v12    # "nativeLibraryRootDir":Ljava/lang/String;
    const/4 v4, 0x1

    .line 196
    .restart local v4    # "nativeLibraryRootRequiresIsa":Z
    new-instance v3, Ljava/io/File;

    .line 197
    invoke-static {p0}, Lcom/android/server/pm/InstructionSets;->getPrimaryInstructionSet(Lcom/android/server/pm/PackageAbiHelper$Abis;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v12, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    .line 199
    .restart local v7    # "nativeLibraryDir":Ljava/lang/String;
    iget-object v3, v0, Lcom/android/server/pm/PackageAbiHelper$Abis;->secondary:Ljava/lang/String;

    if-eqz v3, :cond_aa

    .line 200
    new-instance v3, Ljava/io/File;

    iget-object v8, v0, Lcom/android/server/pm/PackageAbiHelper$Abis;->secondary:Ljava/lang/String;

    .line 201
    invoke-static {v8}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v12, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "secondaryNativeLibraryDir":Ljava/lang/String;
    goto :goto_ab

    .line 203
    .end local v3    # "secondaryNativeLibraryDir":Ljava/lang/String;
    :cond_aa
    const/4 v3, 0x0

    .line 206
    .restart local v3    # "secondaryNativeLibraryDir":Ljava/lang/String;
    :goto_ab
    new-instance v8, Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;

    invoke-direct {v8, v12, v4, v7, v3}, Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    return-object v8
.end method

.method private static maybeThrowExceptionForMultiArchCopy(Ljava/lang/String;I)V
    .registers 3
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "copyRet"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 129
    if-gez p1, :cond_11

    .line 130
    const/16 v0, -0x72

    if-eq p1, v0, :cond_11

    const/16 v0, -0x71

    if-ne p1, v0, :cond_b

    goto :goto_11

    .line 132
    :cond_b
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    invoke-direct {v0, p1, p0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 135
    :cond_11
    :goto_11
    return-void
.end method


# virtual methods
.method public derivePackageAbi(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ZLjava/lang/String;Z)Landroid/util/Pair;
    .registers 23
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "isUpdatedSystemApp"    # Z
    .param p3, "cpuAbiOverride"    # Ljava/lang/String;
    .param p4, "extractLibs"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            "Z",
            "Ljava/lang/String;",
            "Z)",
            "Landroid/util/Pair<",
            "Lcom/android/server/pm/PackageAbiHelper$Abis;",
            "Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 307
    invoke-static/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getRawPrimaryCpuAbi(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object v1

    .line 308
    .local v1, "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getRawSecondaryCpuAbi(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object v2

    .line 309
    .local v2, "pkgRawSecondaryCpuAbi":Ljava/lang/String;
    new-instance v3, Lcom/android/server/pm/PackageAbiHelper$Abis;

    invoke-direct {v3, v1, v2}, Lcom/android/server/pm/PackageAbiHelper$Abis;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lcom/android/server/pm/PackageManagerService;->sAppLib32InstallDir:Ljava/io/File;

    .line 311
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getCodePath()Ljava/lang/String;

    move-result-object v5

    .line 312
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getBaseCodePath()Ljava/lang/String;

    move-result-object v6

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isSystem()Z

    move-result v7

    .line 309
    move/from16 v8, p2

    invoke-static/range {v3 .. v8}, Lcom/android/server/pm/PackageAbiHelperImpl;->getNativeLibraryPaths(Lcom/android/server/pm/PackageAbiHelper$Abis;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;

    move-result-object v3

    .line 316
    .local v3, "initialLibraryPaths":Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isSystem()Z

    move-result v0

    if-eqz v0, :cond_2c

    if-nez p2, :cond_2c

    .line 317
    const/4 v0, 0x0

    move v10, v0

    .end local p4    # "extractLibs":Z
    .local v0, "extractLibs":Z
    goto :goto_2e

    .line 320
    .end local v0    # "extractLibs":Z
    .restart local p4    # "extractLibs":Z
    :cond_2c
    move/from16 v10, p4

    .end local p4    # "extractLibs":Z
    .local v10, "extractLibs":Z
    :goto_2e
    iget-object v11, v3, Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;->nativeLibraryRootDir:Ljava/lang/String;

    .line 321
    .local v11, "nativeLibraryRootStr":Ljava/lang/String;
    iget-boolean v12, v3, Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;->nativeLibraryRootRequiresIsa:Z

    .line 322
    .local v12, "useIsaSpecificSubdirs":Z
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getCodePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/incremental/IncrementalManager;->isIncrementalPath(Ljava/lang/String;)Z

    move-result v13

    .line 324
    .local v13, "onIncremental":Z
    const/4 v4, 0x0

    .line 325
    .local v4, "primaryCpuAbi":Ljava/lang/String;
    const/4 v5, 0x0

    .line 327
    .local v5, "secondaryCpuAbi":Ljava/lang/String;
    const/4 v6, 0x0

    .line 329
    .local v6, "handle":Lcom/android/internal/content/NativeLibraryHelper$Handle;
    :try_start_3d
    invoke-static/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->createNativeLibraryHandle(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Lcom/android/internal/content/NativeLibraryHelper$Handle;

    move-result-object v0

    move-object v6, v0

    .line 336
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 339
    .local v0, "nativeLibraryRoot":Ljava/io/File;
    const/4 v4, 0x0

    .line 340
    const/4 v5, 0x0

    .line 341
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isMultiArch()Z

    move-result v7
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_4d} :catch_1b5
    .catchall {:try_start_3d .. :try_end_4d} :catchall_1b1

    const-string v8, "copyNativeBinaries"

    const-string v9, "findSupportedAbi"

    if-eqz v7, :cond_119

    .line 342
    const/16 v7, -0x72

    .line 343
    .local v7, "abi32":I
    const/16 v16, -0x72

    .line 344
    .local v16, "abi64":I
    :try_start_57
    sget-object v14, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    array-length v14, v14
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_5a} :catch_114
    .catchall {:try_start_57 .. :try_end_5a} :catchall_10f

    if-lez v14, :cond_7f

    .line 345
    if-eqz v10, :cond_6c

    .line 346
    const-wide/32 v14, 0x40000

    :try_start_61
    invoke-static {v14, v15, v8}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 347
    sget-object v14, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    invoke-static {v6, v0, v14, v12, v13}, Lcom/android/internal/content/NativeLibraryHelper;->copyNativeBinariesForSupportedAbi(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/io/File;[Ljava/lang/String;ZZ)I

    move-result v14

    move v7, v14

    goto :goto_79

    .line 351
    :cond_6c
    const-wide/32 v14, 0x40000

    invoke-static {v14, v15, v9}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 352
    sget-object v14, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    invoke-static {v6, v14}, Lcom/android/internal/content/NativeLibraryHelper;->findSupportedAbi(Lcom/android/internal/content/NativeLibraryHelper$Handle;[Ljava/lang/String;)I

    move-result v14

    move v7, v14

    .line 355
    :goto_79
    const-wide/32 v14, 0x40000

    invoke-static {v14, v15}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_7f
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_7f} :catch_99
    .catchall {:try_start_61 .. :try_end_7f} :catchall_94

    .line 359
    :cond_7f
    const-string v14, "Shared library native lib extraction not supported"

    if-ltz v7, :cond_9e

    :try_start_83
    invoke-static/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->isLibrary(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v15

    if-eqz v15, :cond_9e

    if-nez v10, :cond_8c

    goto :goto_9e

    .line 360
    :cond_8c
    new-instance v8, Lcom/android/server/pm/PackageManagerException;

    const/16 v9, -0x6e

    invoke-direct {v8, v9, v14}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .end local v1    # "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    .end local v2    # "pkgRawSecondaryCpuAbi":Ljava/lang/String;
    .end local v3    # "initialLibraryPaths":Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;
    .end local v4    # "primaryCpuAbi":Ljava/lang/String;
    .end local v5    # "secondaryCpuAbi":Ljava/lang/String;
    .end local v6    # "handle":Lcom/android/internal/content/NativeLibraryHelper$Handle;
    .end local v10    # "extractLibs":Z
    .end local v11    # "nativeLibraryRootStr":Ljava/lang/String;
    .end local v12    # "useIsaSpecificSubdirs":Z
    .end local v13    # "onIncremental":Z
    .end local p0    # "this":Lcom/android/server/pm/PackageAbiHelperImpl;
    .end local p1    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local p2    # "isUpdatedSystemApp":Z
    .end local p3    # "cpuAbiOverride":Ljava/lang/String;
    throw v8
    :try_end_94
    .catch Ljava/io/IOException; {:try_start_83 .. :try_end_94} :catch_99
    .catchall {:try_start_83 .. :try_end_94} :catchall_94

    .line 454
    .end local v0    # "nativeLibraryRoot":Ljava/io/File;
    .end local v7    # "abi32":I
    .end local v16    # "abi64":I
    .restart local v1    # "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    .restart local v2    # "pkgRawSecondaryCpuAbi":Ljava/lang/String;
    .restart local v3    # "initialLibraryPaths":Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;
    .restart local v4    # "primaryCpuAbi":Ljava/lang/String;
    .restart local v5    # "secondaryCpuAbi":Ljava/lang/String;
    .restart local v6    # "handle":Lcom/android/internal/content/NativeLibraryHelper$Handle;
    .restart local v10    # "extractLibs":Z
    .restart local v11    # "nativeLibraryRootStr":Ljava/lang/String;
    .restart local v12    # "useIsaSpecificSubdirs":Z
    .restart local v13    # "onIncremental":Z
    .restart local p0    # "this":Lcom/android/server/pm/PackageAbiHelperImpl;
    .restart local p1    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local p2    # "isUpdatedSystemApp":Z
    .restart local p3    # "cpuAbiOverride":Ljava/lang/String;
    :catchall_94
    move-exception v0

    move-object/from16 v17, v2

    goto/16 :goto_1fd

    .line 451
    :catch_99
    move-exception v0

    move-object/from16 v17, v2

    goto/16 :goto_1b8

    .line 364
    .restart local v0    # "nativeLibraryRoot":Ljava/io/File;
    .restart local v7    # "abi32":I
    .restart local v16    # "abi64":I
    :cond_9e
    :goto_9e
    :try_start_9e
    const-string v15, "Error unpackaging 32 bit native libs for multiarch app."

    invoke-static {v15, v7}, Lcom/android/server/pm/PackageAbiHelperImpl;->maybeThrowExceptionForMultiArchCopy(Ljava/lang/String;I)V

    .line 367
    sget-object v15, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    array-length v15, v15
    :try_end_a6
    .catch Ljava/io/IOException; {:try_start_9e .. :try_end_a6} :catch_114
    .catchall {:try_start_9e .. :try_end_a6} :catchall_10f

    if-lez v15, :cond_d6

    .line 368
    if-eqz v10, :cond_bc

    .line 369
    move-object v15, v1

    move-object/from16 v17, v2

    const-wide/32 v1, 0x40000

    .end local v1    # "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    .end local v2    # "pkgRawSecondaryCpuAbi":Ljava/lang/String;
    .local v15, "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    .local v17, "pkgRawSecondaryCpuAbi":Ljava/lang/String;
    :try_start_b0
    invoke-static {v1, v2, v8}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 370
    sget-object v1, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    invoke-static {v6, v0, v1, v12, v13}, Lcom/android/internal/content/NativeLibraryHelper;->copyNativeBinariesForSupportedAbi(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/io/File;[Ljava/lang/String;ZZ)I

    move-result v1

    move/from16 v16, v1

    .end local v16    # "abi64":I
    .local v1, "abi64":I
    goto :goto_cd

    .line 374
    .end local v15    # "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    .end local v17    # "pkgRawSecondaryCpuAbi":Ljava/lang/String;
    .local v1, "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    .restart local v2    # "pkgRawSecondaryCpuAbi":Ljava/lang/String;
    .restart local v16    # "abi64":I
    :cond_bc
    move-object v15, v1

    move-object/from16 v17, v2

    .end local v1    # "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    .end local v2    # "pkgRawSecondaryCpuAbi":Ljava/lang/String;
    .restart local v15    # "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    .restart local v17    # "pkgRawSecondaryCpuAbi":Ljava/lang/String;
    const-wide/32 v1, 0x40000

    invoke-static {v1, v2, v9}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 375
    sget-object v1, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    invoke-static {v6, v1}, Lcom/android/internal/content/NativeLibraryHelper;->findSupportedAbi(Lcom/android/internal/content/NativeLibraryHelper$Handle;[Ljava/lang/String;)I

    move-result v1

    .end local v16    # "abi64":I
    .local v1, "abi64":I
    move/from16 v16, v1

    .line 378
    .end local v1    # "abi64":I
    .restart local v16    # "abi64":I
    :goto_cd
    const-wide/32 v1, 0x40000

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    move/from16 v1, v16

    goto :goto_db

    .line 367
    .end local v15    # "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    .end local v17    # "pkgRawSecondaryCpuAbi":Ljava/lang/String;
    .local v1, "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    .restart local v2    # "pkgRawSecondaryCpuAbi":Ljava/lang/String;
    :cond_d6
    move-object v15, v1

    move-object/from16 v17, v2

    .end local v1    # "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    .end local v2    # "pkgRawSecondaryCpuAbi":Ljava/lang/String;
    .restart local v15    # "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    .restart local v17    # "pkgRawSecondaryCpuAbi":Ljava/lang/String;
    move/from16 v1, v16

    .line 381
    .end local v16    # "abi64":I
    .local v1, "abi64":I
    :goto_db
    const-string v2, "Error unpackaging 64 bit native libs for multiarch app."

    invoke-static {v2, v1}, Lcom/android/server/pm/PackageAbiHelperImpl;->maybeThrowExceptionForMultiArchCopy(Ljava/lang/String;I)V

    .line 384
    if-ltz v1, :cond_f8

    .line 386
    if-eqz v10, :cond_f3

    invoke-static/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->isLibrary(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v2

    if-nez v2, :cond_eb

    goto :goto_f3

    .line 387
    :cond_eb
    new-instance v2, Lcom/android/server/pm/PackageManagerException;

    const/16 v8, -0x6e

    invoke-direct {v2, v8, v14}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .end local v3    # "initialLibraryPaths":Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;
    .end local v4    # "primaryCpuAbi":Ljava/lang/String;
    .end local v5    # "secondaryCpuAbi":Ljava/lang/String;
    .end local v6    # "handle":Lcom/android/internal/content/NativeLibraryHelper$Handle;
    .end local v10    # "extractLibs":Z
    .end local v11    # "nativeLibraryRootStr":Ljava/lang/String;
    .end local v12    # "useIsaSpecificSubdirs":Z
    .end local v13    # "onIncremental":Z
    .end local v15    # "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    .end local v17    # "pkgRawSecondaryCpuAbi":Ljava/lang/String;
    .end local p0    # "this":Lcom/android/server/pm/PackageAbiHelperImpl;
    .end local p1    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local p2    # "isUpdatedSystemApp":Z
    .end local p3    # "cpuAbiOverride":Ljava/lang/String;
    throw v2

    .line 390
    .restart local v3    # "initialLibraryPaths":Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;
    .restart local v4    # "primaryCpuAbi":Ljava/lang/String;
    .restart local v5    # "secondaryCpuAbi":Ljava/lang/String;
    .restart local v6    # "handle":Lcom/android/internal/content/NativeLibraryHelper$Handle;
    .restart local v10    # "extractLibs":Z
    .restart local v11    # "nativeLibraryRootStr":Ljava/lang/String;
    .restart local v12    # "useIsaSpecificSubdirs":Z
    .restart local v13    # "onIncremental":Z
    .restart local v15    # "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    .restart local v17    # "pkgRawSecondaryCpuAbi":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/server/pm/PackageAbiHelperImpl;
    .restart local p1    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local p2    # "isUpdatedSystemApp":Z
    .restart local p3    # "cpuAbiOverride":Ljava/lang/String;
    :cond_f3
    :goto_f3
    sget-object v2, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    aget-object v2, v2, v1

    move-object v4, v2

    .line 393
    :cond_f8
    if-ltz v7, :cond_10c

    .line 394
    sget-object v2, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    aget-object v2, v2, v7

    .line 395
    .local v2, "abi":Ljava/lang/String;
    if-ltz v1, :cond_10b

    .line 396
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isUse32BitAbi()Z

    move-result v8

    if-eqz v8, :cond_109

    .line 397
    move-object v5, v4

    .line 398
    move-object v4, v2

    goto :goto_10c

    .line 400
    :cond_109
    move-object v5, v2

    goto :goto_10c

    .line 403
    :cond_10b
    move-object v4, v2

    .line 406
    .end local v1    # "abi64":I
    .end local v2    # "abi":Ljava/lang/String;
    .end local v7    # "abi32":I
    :cond_10c
    :goto_10c
    move-object v1, v15

    goto/16 :goto_1a8

    .line 454
    .end local v0    # "nativeLibraryRoot":Ljava/io/File;
    .end local v15    # "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    .end local v17    # "pkgRawSecondaryCpuAbi":Ljava/lang/String;
    .local v1, "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    .local v2, "pkgRawSecondaryCpuAbi":Ljava/lang/String;
    :catchall_10f
    move-exception v0

    move-object/from16 v17, v2

    .end local v1    # "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    .end local v2    # "pkgRawSecondaryCpuAbi":Ljava/lang/String;
    .restart local v15    # "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    .restart local v17    # "pkgRawSecondaryCpuAbi":Ljava/lang/String;
    goto/16 :goto_1fd

    .line 451
    .end local v15    # "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    .end local v17    # "pkgRawSecondaryCpuAbi":Ljava/lang/String;
    .restart local v1    # "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    .restart local v2    # "pkgRawSecondaryCpuAbi":Ljava/lang/String;
    :catch_114
    move-exception v0

    move-object/from16 v17, v2

    .end local v1    # "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    .end local v2    # "pkgRawSecondaryCpuAbi":Ljava/lang/String;
    .restart local v15    # "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    .restart local v17    # "pkgRawSecondaryCpuAbi":Ljava/lang/String;
    goto/16 :goto_1b8

    .line 407
    .end local v15    # "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    .end local v17    # "pkgRawSecondaryCpuAbi":Ljava/lang/String;
    .restart local v0    # "nativeLibraryRoot":Ljava/io/File;
    .restart local v1    # "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    .restart local v2    # "pkgRawSecondaryCpuAbi":Ljava/lang/String;
    :cond_119
    move-object v15, v1

    move-object/from16 v17, v2

    .end local v1    # "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    .end local v2    # "pkgRawSecondaryCpuAbi":Ljava/lang/String;
    .restart local v15    # "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    .restart local v17    # "pkgRawSecondaryCpuAbi":Ljava/lang/String;
    const/4 v1, 0x0

    if-eqz p3, :cond_12d

    .line 408
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    aput-object p3, v2, v1
    :try_end_124
    .catch Ljava/io/IOException; {:try_start_b0 .. :try_end_124} :catch_129
    .catchall {:try_start_b0 .. :try_end_124} :catchall_125

    goto :goto_12f

    .line 454
    .end local v0    # "nativeLibraryRoot":Ljava/io/File;
    :catchall_125
    move-exception v0

    move-object v1, v15

    goto/16 :goto_1fd

    .line 451
    :catch_129
    move-exception v0

    move-object v1, v15

    goto/16 :goto_1b8

    .line 408
    .restart local v0    # "nativeLibraryRoot":Ljava/io/File;
    :cond_12d
    :try_start_12d
    sget-object v2, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    .line 414
    .local v2, "abiList":[Ljava/lang/String;
    :goto_12f
    const/4 v7, 0x0

    .line 415
    .local v7, "needsRenderScriptOverride":Z
    sget-object v14, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    array-length v14, v14
    :try_end_133
    .catch Ljava/io/IOException; {:try_start_12d .. :try_end_133} :catch_1ae
    .catchall {:try_start_12d .. :try_end_133} :catchall_1ab

    if-lez v14, :cond_141

    if-nez p3, :cond_141

    .line 416
    :try_start_137
    invoke-static {v6}, Lcom/android/internal/content/NativeLibraryHelper;->hasRenderscriptBitcode(Lcom/android/internal/content/NativeLibraryHelper$Handle;)Z

    move-result v14

    if-eqz v14, :cond_141

    .line 417
    sget-object v14, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    move-object v2, v14

    .line 418
    const/4 v7, 0x1

    .line 422
    :cond_141
    if-eqz v10, :cond_154

    .line 423
    move-object/from16 v16, v2

    const-wide/32 v1, 0x40000

    .end local v2    # "abiList":[Ljava/lang/String;
    .local v16, "abiList":[Ljava/lang/String;
    invoke-static {v1, v2, v8}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 424
    move-object/from16 v2, v16

    .end local v16    # "abiList":[Ljava/lang/String;
    .restart local v2    # "abiList":[Ljava/lang/String;
    invoke-static {v6, v0, v2, v12, v13}, Lcom/android/internal/content/NativeLibraryHelper;->copyNativeBinariesForSupportedAbi(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/io/File;[Ljava/lang/String;ZZ)I

    move-result v1
    :try_end_151
    .catch Ljava/io/IOException; {:try_start_137 .. :try_end_151} :catch_129
    .catchall {:try_start_137 .. :try_end_151} :catchall_125

    move v9, v1

    move-object v1, v15

    .local v1, "copyRet":I
    goto :goto_15f

    .line 427
    .end local v1    # "copyRet":I
    :cond_154
    move-object v1, v15

    const-wide/32 v14, 0x40000

    .end local v15    # "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    .local v1, "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    :try_start_158
    invoke-static {v14, v15, v9}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 428
    invoke-static {v6, v2}, Lcom/android/internal/content/NativeLibraryHelper;->findSupportedAbi(Lcom/android/internal/content/NativeLibraryHelper$Handle;[Ljava/lang/String;)I

    move-result v9

    .line 430
    .local v9, "copyRet":I
    :goto_15f
    const-wide/32 v14, 0x40000

    invoke-static {v14, v15}, Landroid/os/Trace;->traceEnd(J)V

    .line 432
    const/16 v14, -0x72

    if-gez v9, :cond_185

    if-ne v9, v14, :cond_16c

    goto :goto_185

    .line 433
    :cond_16c
    new-instance v8, Lcom/android/server/pm/PackageManagerException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Error unpackaging native libs for app, errorCode="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/16 v15, -0x6e

    invoke-direct {v8, v15, v14}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .end local v1    # "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    .end local v3    # "initialLibraryPaths":Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;
    .end local v4    # "primaryCpuAbi":Ljava/lang/String;
    .end local v5    # "secondaryCpuAbi":Ljava/lang/String;
    .end local v6    # "handle":Lcom/android/internal/content/NativeLibraryHelper$Handle;
    .end local v10    # "extractLibs":Z
    .end local v11    # "nativeLibraryRootStr":Ljava/lang/String;
    .end local v12    # "useIsaSpecificSubdirs":Z
    .end local v13    # "onIncremental":Z
    .end local v17    # "pkgRawSecondaryCpuAbi":Ljava/lang/String;
    .end local p0    # "this":Lcom/android/server/pm/PackageAbiHelperImpl;
    .end local p1    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local p2    # "isUpdatedSystemApp":Z
    .end local p3    # "cpuAbiOverride":Ljava/lang/String;
    throw v8

    .line 437
    .restart local v1    # "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    .restart local v3    # "initialLibraryPaths":Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;
    .restart local v4    # "primaryCpuAbi":Ljava/lang/String;
    .restart local v5    # "secondaryCpuAbi":Ljava/lang/String;
    .restart local v6    # "handle":Lcom/android/internal/content/NativeLibraryHelper$Handle;
    .restart local v10    # "extractLibs":Z
    .restart local v11    # "nativeLibraryRootStr":Ljava/lang/String;
    .restart local v12    # "useIsaSpecificSubdirs":Z
    .restart local v13    # "onIncremental":Z
    .restart local v17    # "pkgRawSecondaryCpuAbi":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/server/pm/PackageAbiHelperImpl;
    .restart local p1    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local p2    # "isUpdatedSystemApp":Z
    .restart local p3    # "cpuAbiOverride":Ljava/lang/String;
    :cond_185
    :goto_185
    if-ltz v9, :cond_19b

    .line 439
    invoke-static/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->isLibrary(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v8

    if-nez v8, :cond_191

    .line 443
    aget-object v8, v2, v9

    move-object v4, v8

    goto :goto_1a8

    .line 440
    :cond_191
    new-instance v8, Lcom/android/server/pm/PackageManagerException;

    const-string v14, "Shared library with native libs must be multiarch"

    const/16 v15, -0x6e

    invoke-direct {v8, v15, v14}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .end local v1    # "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    .end local v3    # "initialLibraryPaths":Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;
    .end local v4    # "primaryCpuAbi":Ljava/lang/String;
    .end local v5    # "secondaryCpuAbi":Ljava/lang/String;
    .end local v6    # "handle":Lcom/android/internal/content/NativeLibraryHelper$Handle;
    .end local v10    # "extractLibs":Z
    .end local v11    # "nativeLibraryRootStr":Ljava/lang/String;
    .end local v12    # "useIsaSpecificSubdirs":Z
    .end local v13    # "onIncremental":Z
    .end local v17    # "pkgRawSecondaryCpuAbi":Ljava/lang/String;
    .end local p0    # "this":Lcom/android/server/pm/PackageAbiHelperImpl;
    .end local p1    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local p2    # "isUpdatedSystemApp":Z
    .end local p3    # "cpuAbiOverride":Ljava/lang/String;
    throw v8

    .line 444
    .restart local v1    # "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    .restart local v3    # "initialLibraryPaths":Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;
    .restart local v4    # "primaryCpuAbi":Ljava/lang/String;
    .restart local v5    # "secondaryCpuAbi":Ljava/lang/String;
    .restart local v6    # "handle":Lcom/android/internal/content/NativeLibraryHelper$Handle;
    .restart local v10    # "extractLibs":Z
    .restart local v11    # "nativeLibraryRootStr":Ljava/lang/String;
    .restart local v12    # "useIsaSpecificSubdirs":Z
    .restart local v13    # "onIncremental":Z
    .restart local v17    # "pkgRawSecondaryCpuAbi":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/server/pm/PackageAbiHelperImpl;
    .restart local p1    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local p2    # "isUpdatedSystemApp":Z
    .restart local p3    # "cpuAbiOverride":Ljava/lang/String;
    :cond_19b
    if-ne v9, v14, :cond_1a2

    if-eqz p3, :cond_1a2

    .line 446
    move-object/from16 v4, p3

    goto :goto_1a8

    .line 447
    :cond_1a2
    if-eqz v7, :cond_1a8

    .line 448
    const/4 v8, 0x0

    aget-object v8, v2, v8
    :try_end_1a7
    .catch Ljava/io/IOException; {:try_start_158 .. :try_end_1a7} :catch_1a9
    .catchall {:try_start_158 .. :try_end_1a7} :catchall_1fc

    move-object v4, v8

    .line 454
    .end local v0    # "nativeLibraryRoot":Ljava/io/File;
    .end local v2    # "abiList":[Ljava/lang/String;
    .end local v7    # "needsRenderScriptOverride":Z
    .end local v9    # "copyRet":I
    :cond_1a8
    :goto_1a8
    goto :goto_1d3

    .line 451
    :catch_1a9
    move-exception v0

    goto :goto_1b8

    .line 454
    .end local v1    # "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    .restart local v15    # "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    :catchall_1ab
    move-exception v0

    move-object v1, v15

    .end local v15    # "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    .restart local v1    # "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    goto :goto_1fd

    .line 451
    .end local v1    # "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    .restart local v15    # "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    :catch_1ae
    move-exception v0

    move-object v1, v15

    .end local v15    # "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    .restart local v1    # "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    goto :goto_1b8

    .line 454
    .end local v17    # "pkgRawSecondaryCpuAbi":Ljava/lang/String;
    .local v2, "pkgRawSecondaryCpuAbi":Ljava/lang/String;
    :catchall_1b1
    move-exception v0

    move-object/from16 v17, v2

    .end local v2    # "pkgRawSecondaryCpuAbi":Ljava/lang/String;
    .restart local v17    # "pkgRawSecondaryCpuAbi":Ljava/lang/String;
    goto :goto_1fd

    .line 451
    .end local v17    # "pkgRawSecondaryCpuAbi":Ljava/lang/String;
    .restart local v2    # "pkgRawSecondaryCpuAbi":Ljava/lang/String;
    :catch_1b5
    move-exception v0

    move-object/from16 v17, v2

    .line 452
    .end local v2    # "pkgRawSecondaryCpuAbi":Ljava/lang/String;
    .local v0, "ioe":Ljava/io/IOException;
    .restart local v17    # "pkgRawSecondaryCpuAbi":Ljava/lang/String;
    :goto_1b8
    :try_start_1b8
    const-string v2, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to get canonical file "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1d2
    .catchall {:try_start_1b8 .. :try_end_1d2} :catchall_1fc

    .line 454
    nop

    .end local v0    # "ioe":Ljava/io/IOException;
    :goto_1d3
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 455
    move-object v0, v4

    move-object v2, v5

    move-object v14, v6

    .line 460
    .end local v4    # "primaryCpuAbi":Ljava/lang/String;
    .end local v5    # "secondaryCpuAbi":Ljava/lang/String;
    .end local v6    # "handle":Lcom/android/internal/content/NativeLibraryHelper$Handle;
    .local v0, "primaryCpuAbi":Ljava/lang/String;
    .local v2, "secondaryCpuAbi":Ljava/lang/String;
    .local v14, "handle":Lcom/android/internal/content/NativeLibraryHelper$Handle;
    new-instance v4, Lcom/android/server/pm/PackageAbiHelper$Abis;

    invoke-direct {v4, v0, v2}, Lcom/android/server/pm/PackageAbiHelper$Abis;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v15, v4

    .line 461
    .local v15, "abis":Lcom/android/server/pm/PackageAbiHelper$Abis;
    new-instance v9, Landroid/util/Pair;

    sget-object v5, Lcom/android/server/pm/PackageManagerService;->sAppLib32InstallDir:Ljava/io/File;

    .line 463
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getCodePath()Ljava/lang/String;

    move-result-object v6

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getBaseCodePath()Ljava/lang/String;

    move-result-object v7

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isSystem()Z

    move-result v8

    .line 462
    move-object/from16 v16, v0

    move-object v0, v9

    .end local v0    # "primaryCpuAbi":Ljava/lang/String;
    .local v16, "primaryCpuAbi":Ljava/lang/String;
    move/from16 v9, p2

    invoke-static/range {v4 .. v9}, Lcom/android/server/pm/PackageAbiHelperImpl;->getNativeLibraryPaths(Lcom/android/server/pm/PackageAbiHelper$Abis;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;

    move-result-object v4

    invoke-direct {v0, v15, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 461
    return-object v0

    .line 454
    .end local v2    # "secondaryCpuAbi":Ljava/lang/String;
    .end local v14    # "handle":Lcom/android/internal/content/NativeLibraryHelper$Handle;
    .end local v15    # "abis":Lcom/android/server/pm/PackageAbiHelper$Abis;
    .end local v16    # "primaryCpuAbi":Ljava/lang/String;
    .restart local v4    # "primaryCpuAbi":Ljava/lang/String;
    .restart local v5    # "secondaryCpuAbi":Ljava/lang/String;
    .restart local v6    # "handle":Lcom/android/internal/content/NativeLibraryHelper$Handle;
    :catchall_1fc
    move-exception v0

    :goto_1fd
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 455
    throw v0
.end method

.method public getAdjustedAbiForSharedUser(Ljava/util/Set;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/lang/String;
    .registers 13
    .param p2, "scannedPackage"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/android/server/pm/PackageSetting;",
            ">;",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 484
    .local p1, "packagesForUser":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/pm/PackageSetting;>;"
    const/4 v0, 0x0

    .line 485
    .local v0, "requiredInstructionSet":Ljava/lang/String;
    if-eqz p2, :cond_d

    .line 486
    invoke-static {p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getRawPrimaryCpuAbi(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object v1

    .line 487
    .local v1, "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    if-eqz v1, :cond_d

    .line 488
    invoke-static {v1}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 492
    .end local v1    # "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    :cond_d
    const/4 v1, 0x0

    .line 494
    .local v1, "requirer":Lcom/android/server/pm/PackageSetting;
    const-string v2, ""

    .line 495
    .local v2, "nonNullPrimaryCpuAbiSystemUidPackageString":Ljava/lang/String;
    const/4 v3, 0x0

    .line 497
    .local v3, "hasInstructionSetMismatch":Z
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_15
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/PackageSetting;

    .line 498
    .local v5, "ps":Lcom/android/server/pm/PackageSetting;
    iget-object v6, v5, Lcom/android/server/pm/PackageSetting;->primaryCpuAbiString:Ljava/lang/String;

    if-eqz v6, :cond_55

    iget-object v6, v5, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    if-eqz v6, :cond_55

    iget-object v6, v5, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 499
    invoke-interface {v6}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isSystem()Z

    move-result v6

    if-eqz v6, :cond_55

    .line 500
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v5, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-interface {v7}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v5, Lcom/android/server/pm/PackageSetting;->primaryCpuAbiString:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "] "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 507
    :cond_55
    if-eqz p2, :cond_64

    invoke-interface {p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v5, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_64

    .line 508
    goto :goto_15

    .line 510
    :cond_64
    iget-object v6, v5, Lcom/android/server/pm/PackageSetting;->primaryCpuAbiString:Ljava/lang/String;

    if-nez v6, :cond_69

    .line 511
    goto :goto_15

    .line 514
    :cond_69
    iget-object v6, v5, Lcom/android/server/pm/PackageSetting;->primaryCpuAbiString:Ljava/lang/String;

    .line 515
    invoke-static {v6}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 516
    .local v6, "instructionSet":Ljava/lang/String;
    if-eqz v0, :cond_aa

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_aa

    .line 519
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Instruction set mismatch, "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 520
    if-nez v1, :cond_86

    const-string v8, "[caller]"

    goto :goto_87

    :cond_86
    move-object v8, v1

    :goto_87
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " requires "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " whereas "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 523
    .local v7, "errorMessage":Ljava/lang/String;
    const-string v8, "PackageManager"

    invoke-static {v8, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    const/4 v3, 0x1

    .line 529
    .end local v7    # "errorMessage":Ljava/lang/String;
    :cond_aa
    if-nez v0, :cond_ae

    .line 530
    move-object v0, v6

    .line 531
    move-object v1, v5

    .line 533
    .end local v5    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v6    # "instructionSet":Ljava/lang/String;
    :cond_ae
    goto/16 :goto_15

    .line 535
    :cond_b0
    if-eqz v3, :cond_c8

    if-eqz v2, :cond_c8

    .line 537
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Non-null Primary Cpu Abi System Uid packages : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/pm/PmLog;->logCriticalInfoAndLogcat(Ljava/lang/String;)V

    .line 540
    :cond_c8
    if-nez v0, :cond_cc

    .line 541
    const/4 v4, 0x0

    return-object v4

    .line 544
    :cond_cc
    if-eqz v1, :cond_d1

    .line 549
    iget-object v4, v1, Lcom/android/server/pm/PackageSetting;->primaryCpuAbiString:Ljava/lang/String;

    .local v4, "adjustedAbi":Ljava/lang/String;
    goto :goto_d5

    .line 553
    .end local v4    # "adjustedAbi":Ljava/lang/String;
    :cond_d1
    invoke-static {p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getRawPrimaryCpuAbi(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object v4

    .line 555
    .restart local v4    # "adjustedAbi":Ljava/lang/String;
    :goto_d5
    return-object v4
.end method

.method public getBundledAppAbis(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Lcom/android/server/pm/PackageAbiHelper$Abis;
    .registers 5
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 212
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getCodePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/PackageAbiHelperImpl;->deriveCodePathName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 216
    .local v0, "apkName":Ljava/lang/String;
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getBaseCodePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/pm/PackageAbiHelperImpl;->calculateBundledApkRoot(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 217
    .local v1, "apkRoot":Ljava/lang/String;
    invoke-direct {p0, p1, v1, v0}, Lcom/android/server/pm/PackageAbiHelperImpl;->getBundledAppAbi(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/PackageAbiHelper$Abis;

    move-result-object v2

    .line 218
    .local v2, "abis":Lcom/android/server/pm/PackageAbiHelper$Abis;
    return-object v2
.end method

.method public getNativeLibraryPaths(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;Ljava/io/File;)Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;
    .registers 10
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "pkgSetting"    # Lcom/android/server/pm/PackageSetting;
    .param p3, "appLib32InstallDir"    # Ljava/io/File;

    .line 142
    new-instance v0, Lcom/android/server/pm/PackageAbiHelper$Abis;

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPrimaryCpuAbi()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSecondaryCpuAbi()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/PackageAbiHelper$Abis;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getCodePath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getBaseCodePath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isSystem()Z

    move-result v4

    .line 144
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getPkgState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->isUpdatedSystemApp()Z

    move-result v5

    .line 142
    move-object v1, p3

    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/PackageAbiHelperImpl;->getNativeLibraryPaths(Lcom/android/server/pm/PackageAbiHelper$Abis;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;

    move-result-object v0

    return-object v0
.end method
