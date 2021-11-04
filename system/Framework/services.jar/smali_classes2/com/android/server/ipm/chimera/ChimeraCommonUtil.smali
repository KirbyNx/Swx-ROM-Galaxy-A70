.class public Lcom/android/server/ipm/chimera/ChimeraCommonUtil;
.super Ljava/lang/Object;
.source "ChimeraCommonUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ipm/chimera/ChimeraCommonUtil$PsiFile;,
        Lcom/android/server/ipm/chimera/ChimeraCommonUtil$PsiFileType;,
        Lcom/android/server/ipm/chimera/ChimeraCommonUtil$PsiDataType;,
        Lcom/android/server/ipm/chimera/ChimeraCommonUtil$TriggerSource;
    }
.end annotation


# static fields
.field static final ADJ_LEVELS:[I

.field static final GROUP_CNT:I = 0x3

.field private static final TAG:Ljava/lang/String; = "ChimeraCommonUtil"

.field static final UNKNOWN_ADJ:I = 0x3e9


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 28
    const/16 v0, 0xe

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/android/server/ipm/chimera/ChimeraCommonUtil;->ADJ_LEVELS:[I

    return-void

    :array_a
    .array-data 4
        0x3e7
        0x384
        0x35c
        0x352
        0x320
        0x2bc
        0x258
        0x1f4
        0x190
        0x12c
        0xfa
        0xc8
        0x64
        0x0
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getAllRunningPackagePids(I)Ljava/util/Set;
    .registers 8
    .param p0, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/acct/uid_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 229
    .local v0, "dirPath":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 230
    .local v1, "file":Ljava/io/File;
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 232
    .local v2, "runningPids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_57

    .line 233
    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v3

    .line 234
    .local v3, "filelist":[Ljava/lang/String;
    if-eqz v3, :cond_57

    .line 235
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_28
    array-length v5, v3

    if-ge v4, v5, :cond_57

    .line 236
    aget-object v5, v3, v4

    const-string/jumbo v6, "pid"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_54

    .line 237
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v3, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/cgroup.procs"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 238
    .local v5, "path":Ljava/lang/String;
    invoke-static {v5, v2}, Lcom/android/server/ipm/chimera/ChimeraCommonUtil;->readAcctFile(Ljava/lang/String;Ljava/util/Set;)V

    .line 235
    .end local v5    # "path":Ljava/lang/String;
    :cond_54
    add-int/lit8 v4, v4, 0x1

    goto :goto_28

    .line 243
    .end local v3    # "filelist":[Ljava/lang/String;
    .end local v4    # "i":I
    :cond_57
    return-object v2
.end method

.method static getAvailableMemoryKb(Lcom/android/server/ipm/chimera/SystemRepository;)J
    .registers 5
    .param p0, "systemRepository"    # Lcom/android/server/ipm/chimera/SystemRepository;

    .line 56
    invoke-interface {p0}, Lcom/android/server/ipm/chimera/SystemRepository;->getAvailableMemory()J

    move-result-wide v0

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    return-wide v0
.end method

.method static getProcPss(Lcom/android/server/ipm/chimera/SystemRepository;I)J
    .registers 4
    .param p0, "systemRepository"    # Lcom/android/server/ipm/chimera/SystemRepository;
    .param p1, "pid"    # I

    .line 100
    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Lcom/android/server/ipm/chimera/SystemRepository;->getPss(I[J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getPsiFile(Lcom/android/server/ipm/chimera/ChimeraCommonUtil$PsiFileType;Lcom/android/server/ipm/chimera/ChimeraCommonUtil$PsiDataType;)Lcom/android/server/ipm/chimera/ChimeraCommonUtil$PsiFile;
    .registers 9
    .param p0, "type"    # Lcom/android/server/ipm/chimera/ChimeraCommonUtil$PsiFileType;
    .param p1, "dataType"    # Lcom/android/server/ipm/chimera/ChimeraCommonUtil$PsiDataType;

    .line 104
    const-string v0, "Exception"

    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 105
    .local v2, "merged":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .line 108
    .local v3, "br":Ljava/io/BufferedReader;
    :try_start_a
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-virtual {p0}, Lcom/android/server/ipm/chimera/ChimeraCommonUtil$PsiFileType;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v3, v4

    .line 109
    const/4 v4, 0x0

    .line 112
    .local v4, "line":Ljava/lang/String;
    :goto_1a
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_1e} :catch_4a
    .catchall {:try_start_a .. :try_end_1e} :catchall_48

    move-object v4, v5

    .line 113
    if-nez v4, :cond_3f

    .line 114
    nop

    .line 123
    .end local v4    # "line":Ljava/lang/String;
    nop

    .line 125
    :try_start_23
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_26} :catch_27

    .line 128
    :goto_26
    goto :goto_71

    .line 126
    :catch_27
    move-exception v4

    .line 127
    .local v4, "var12":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    :goto_2d
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v4    # "var12":Ljava/lang/Exception;
    goto :goto_26

    .line 117
    .local v4, "line":Ljava/lang/String;
    :cond_3f
    :try_start_3f
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_47} :catch_4a
    .catchall {:try_start_3f .. :try_end_47} :catchall_48

    goto :goto_1a

    .line 123
    .end local v4    # "line":Ljava/lang/String;
    :catchall_48
    move-exception v4

    goto :goto_7b

    .line 119
    :catch_4a
    move-exception v4

    .line 121
    .local v4, "var13":Ljava/lang/Exception;
    :try_start_4b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getPsiFile Exception"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_63
    .catchall {:try_start_4b .. :try_end_63} :catchall_48

    .line 123
    nop

    .end local v4    # "var13":Ljava/lang/Exception;
    if-eqz v3, :cond_71

    .line 125
    :try_start_66
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_69} :catch_6a

    goto :goto_26

    .line 126
    :catch_6a
    move-exception v4

    .line 127
    .local v4, "var12":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_2d

    .line 133
    .end local v4    # "var12":Ljava/lang/Exception;
    :cond_71
    :goto_71
    new-instance v0, Lcom/android/server/ipm/chimera/ChimeraCommonUtil$PsiFile;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/server/ipm/chimera/ChimeraCommonUtil$PsiFile;-><init>(Ljava/lang/String;Lcom/android/server/ipm/chimera/ChimeraCommonUtil$PsiDataType;)V

    return-object v0

    .line 123
    :goto_7b
    if-eqz v3, :cond_98

    .line 125
    :try_start_7d
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_80} :catch_81

    .line 128
    goto :goto_98

    .line 126
    :catch_81
    move-exception v5

    .line 127
    .local v5, "var12":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    .end local v5    # "var12":Ljava/lang/Exception;
    :cond_98
    :goto_98
    throw v4
.end method

.method static getRamSizeGb()I
    .registers 4

    .line 95
    invoke-static {}, Lcom/android/server/ipm/chimera/ChimeraCommonUtil;->getTotalMemorySizeKb()J

    move-result-wide v0

    .line 96
    .local v0, "memTotalKb":J
    long-to-float v2, v0

    const/high16 v3, 0x49800000    # 1048576.0f

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    return v2
.end method

.method static getTotalMemFree()J
    .registers 7

    .line 60
    const-string v0, "/proc/meminfo"

    .line 61
    .local v0, "dir":Ljava/lang/String;
    :try_start_2
    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_7} :catch_51

    .line 62
    .local v1, "fr":Ljava/io/FileReader;
    :try_start_7
    new-instance v2, Ljava/io/BufferedReader;

    const/16 v3, 0x800

    invoke-direct {v2, v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_47

    .line 63
    .local v2, "br":Ljava/io/BufferedReader;
    :try_start_e
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 64
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 65
    .local v3, "memoryLine":Ljava/lang/String;
    if-eqz v3, :cond_36

    .line 66
    const-string v4, "MemFree:"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 67
    .local v4, "subMemoryLine":Ljava/lang/String;
    const-string v5, "\\D+"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5
    :try_end_2d
    .catchall {:try_start_e .. :try_end_2d} :catchall_3d

    int-to-long v5, v5

    .line 68
    .local v5, "memFree":J
    nop

    .line 71
    :try_start_2f
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_47

    :try_start_32
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_35} :catch_51

    .line 68
    return-wide v5

    .line 71
    .end local v3    # "memoryLine":Ljava/lang/String;
    .end local v4    # "subMemoryLine":Ljava/lang/String;
    .end local v5    # "memFree":J
    :cond_36
    :try_start_36
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_47

    .end local v2    # "br":Ljava/io/BufferedReader;
    :try_start_39
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_3c} :catch_51

    .line 73
    .end local v1    # "fr":Ljava/io/FileReader;
    goto :goto_55

    .line 61
    .restart local v1    # "fr":Ljava/io/FileReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    :catchall_3d
    move-exception v3

    :try_start_3e
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_41
    .catchall {:try_start_3e .. :try_end_41} :catchall_42

    goto :goto_46

    :catchall_42
    move-exception v4

    :try_start_43
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "dir":Ljava/lang/String;
    .end local v1    # "fr":Ljava/io/FileReader;
    :goto_46
    throw v3
    :try_end_47
    .catchall {:try_start_43 .. :try_end_47} :catchall_47

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "dir":Ljava/lang/String;
    .restart local v1    # "fr":Ljava/io/FileReader;
    :catchall_47
    move-exception v2

    :try_start_48
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_4b
    .catchall {:try_start_48 .. :try_end_4b} :catchall_4c

    goto :goto_50

    :catchall_4c
    move-exception v3

    :try_start_4d
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "dir":Ljava/lang/String;
    :goto_50
    throw v2
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_51} :catch_51

    .line 71
    .end local v1    # "fr":Ljava/io/FileReader;
    .restart local v0    # "dir":Ljava/lang/String;
    :catch_51
    move-exception v1

    .line 72
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 74
    .end local v1    # "e":Ljava/io/IOException;
    :goto_55
    const-wide/16 v1, 0x0

    return-wide v1
.end method

.method static getTotalMemorySizeKb()J
    .registers 7

    .line 80
    const-string v0, "/proc/meminfo"

    .line 81
    .local v0, "dir":Ljava/lang/String;
    :try_start_2
    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_7} :catch_4d

    .line 82
    .local v1, "fr":Ljava/io/FileReader;
    :try_start_7
    new-instance v2, Ljava/io/BufferedReader;

    const/16 v3, 0x800

    invoke-direct {v2, v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_43

    .line 83
    .local v2, "br":Ljava/io/BufferedReader;
    :try_start_e
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 84
    .local v3, "memoryLine":Ljava/lang/String;
    if-eqz v3, :cond_32

    .line 85
    const-string v4, "MemTotal:"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 86
    .local v4, "subMemoryLine":Ljava/lang/String;
    const-string v5, "\\D+"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5
    :try_end_2a
    .catchall {:try_start_e .. :try_end_2a} :catchall_39

    int-to-long v5, v5

    .line 88
    :try_start_2b
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_43

    :try_start_2e
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_31} :catch_4d

    .line 86
    return-wide v5

    .line 88
    .end local v3    # "memoryLine":Ljava/lang/String;
    .end local v4    # "subMemoryLine":Ljava/lang/String;
    :cond_32
    :try_start_32
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_43

    .end local v2    # "br":Ljava/io/BufferedReader;
    :try_start_35
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_38} :catch_4d

    .line 90
    .end local v1    # "fr":Ljava/io/FileReader;
    goto :goto_51

    .line 81
    .restart local v1    # "fr":Ljava/io/FileReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    :catchall_39
    move-exception v3

    :try_start_3a
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3d
    .catchall {:try_start_3a .. :try_end_3d} :catchall_3e

    goto :goto_42

    :catchall_3e
    move-exception v4

    :try_start_3f
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "dir":Ljava/lang/String;
    .end local v1    # "fr":Ljava/io/FileReader;
    :goto_42
    throw v3
    :try_end_43
    .catchall {:try_start_3f .. :try_end_43} :catchall_43

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "dir":Ljava/lang/String;
    .restart local v1    # "fr":Ljava/io/FileReader;
    :catchall_43
    move-exception v2

    :try_start_44
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_47
    .catchall {:try_start_44 .. :try_end_47} :catchall_48

    goto :goto_4c

    :catchall_48
    move-exception v3

    :try_start_49
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "dir":Ljava/lang/String;
    :goto_4c
    throw v2
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_4d} :catch_4d

    .line 88
    .end local v1    # "fr":Ljava/io/FileReader;
    .restart local v0    # "dir":Ljava/lang/String;
    :catch_4d
    move-exception v1

    .line 89
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 91
    .end local v1    # "e":Ljava/io/IOException;
    :goto_51
    const-wide/16 v1, 0x0

    return-wide v1
.end method

.method static isBubEnabled(Lcom/android/server/ipm/chimera/SystemRepository;)Z
    .registers 5
    .param p0, "systemRepository"    # Lcom/android/server/ipm/chimera/SystemRepository;

    .line 49
    const-string/jumbo v0, "persist.sys.bub_onoff"

    .line 50
    .local v0, "PROPERTY_NAME":Ljava/lang/String;
    const-string v1, "1"

    .line 51
    .local v1, "DEFAULT_VALUE":Ljava/lang/String;
    const-string/jumbo v2, "persist.sys.bub_onoff"

    const-string v3, "1"

    invoke-interface {p0, v2, v3}, Lcom/android/server/ipm/chimera/SystemRepository;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_16

    goto :goto_17

    :cond_16
    const/4 v3, 0x0

    :goto_17
    return v3
.end method

.method private static readAcctFile(Ljava/lang/String;Ljava/util/Set;)V
    .registers 8
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 247
    .local p1, "pidSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .line 248
    .local v0, "reader":Ljava/io/BufferedReader;
    const-string v1, ""

    .line 250
    .local v1, "result":Ljava/lang/String;
    :try_start_3
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v0, v2

    .line 251
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 252
    :goto_13
    if-eqz v1, :cond_22

    .line 253
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 254
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_20} :catch_2e
    .catchall {:try_start_3 .. :try_end_20} :catchall_2c

    move-object v1, v2

    goto :goto_13

    .line 259
    :cond_22
    nop

    .line 261
    :try_start_23
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_26} :catch_27

    .line 264
    :goto_26
    goto :goto_53

    .line 262
    :catch_27
    move-exception v2

    .line 263
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .end local v2    # "e":Ljava/io/IOException;
    goto :goto_26

    .line 259
    :catchall_2c
    move-exception v2

    goto :goto_54

    .line 256
    :catch_2e
    move-exception v2

    .line 257
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_2f
    const-string v3, "ChimeraCommonUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "can\'t read "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4c
    .catchall {:try_start_2f .. :try_end_4c} :catchall_2c

    .line 259
    nop

    .end local v2    # "e":Ljava/io/IOException;
    if-eqz v0, :cond_53

    .line 261
    :try_start_4f
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_52} :catch_27

    goto :goto_26

    .line 267
    :cond_53
    :goto_53
    return-void

    .line 259
    :goto_54
    if-eqz v0, :cond_5e

    .line 261
    :try_start_56
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_59} :catch_5a

    .line 264
    goto :goto_5e

    .line 262
    :catch_5a
    move-exception v3

    .line 263
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 266
    .end local v3    # "e":Ljava/io/IOException;
    :cond_5e
    :goto_5e
    throw v2
.end method
