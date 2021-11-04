.class Lcom/android/server/enterprise/threatdefense/RUFSPolicy;
.super Ljava/lang/Object;
.source "RUFSPolicy.java"


# static fields
.field private static final DATA_POLICY:Ljava/lang/String; = "/data/system/.aasa/AASApolicy/mtdlist.output.txt"

.field private static final SYSTEM_POLICY:Ljava/lang/String; = "/system/etc/mtdlist.output.txt"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mPackageName:Ljava/lang/String;

.field private mPolicyVersion:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 23
    const-class v0, Lcom/android/server/enterprise/threatdefense/RUFSPolicy;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/threatdefense/RUFSPolicy;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/android/server/enterprise/threatdefense/RUFSPolicy;->mPackageName:Ljava/lang/String;

    .line 34
    invoke-direct {p0}, Lcom/android/server/enterprise/threatdefense/RUFSPolicy;->getLatestPolicy()I

    move-result v0

    .line 35
    .local v0, "version":I
    iput v0, p0, Lcom/android/server/enterprise/threatdefense/RUFSPolicy;->mPolicyVersion:I

    .line 36
    sget-object v1, Lcom/android/server/enterprise/threatdefense/RUFSPolicy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "package="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/enterprise/threatdefense/RUFSPolicy;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", version="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    return-void
.end method

.method private getLatestPolicy()I
    .registers 9

    .line 46
    const-string v0, "/data/system/.aasa/AASApolicy/mtdlist.output.txt"

    const-string v1, "/system/etc/mtdlist.output.txt"

    :try_start_4
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 47
    .local v2, "system":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 49
    .local v3, "data":Ljava/io/File;
    const/4 v4, 0x0

    .line 50
    .local v4, "systemParser":Lcom/android/server/enterprise/threatdefense/RUFSParser;
    const/4 v5, 0x0

    .line 51
    .local v5, "dataParser":Lcom/android/server/enterprise/threatdefense/RUFSParser;
    const/4 v6, 0x0

    .line 53
    .local v6, "useSystemPolicy":Z
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_27

    .line 54
    invoke-direct {p0, v1}, Lcom/android/server/enterprise/threatdefense/RUFSPolicy;->readData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/threatdefense/RUFSPolicy;->readDecodedData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 55
    .local v1, "decodedData":Ljava/lang/String;
    if-eqz v1, :cond_27

    .line 56
    new-instance v7, Lcom/android/server/enterprise/threatdefense/RUFSParser;

    invoke-direct {v7, v1}, Lcom/android/server/enterprise/threatdefense/RUFSParser;-><init>(Ljava/lang/String;)V

    move-object v4, v7

    .line 59
    .end local v1    # "decodedData":Ljava/lang/String;
    :cond_27
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 60
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/threatdefense/RUFSPolicy;->readData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/threatdefense/RUFSPolicy;->readDecodedData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, "decodedData":Ljava/lang/String;
    if-eqz v0, :cond_3d

    .line 62
    new-instance v1, Lcom/android/server/enterprise/threatdefense/RUFSParser;

    invoke-direct {v1, v0}, Lcom/android/server/enterprise/threatdefense/RUFSParser;-><init>(Ljava/lang/String;)V

    move-object v5, v1

    .line 66
    .end local v0    # "decodedData":Ljava/lang/String;
    :cond_3d
    if-nez v4, :cond_4a

    if-nez v5, :cond_4a

    .line 67
    sget-object v0, Lcom/android/server/enterprise/threatdefense/RUFSPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Default : No RUFS policy files"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    const/4 v0, 0x0

    return v0

    .line 69
    :cond_4a
    if-eqz v4, :cond_5b

    .line 70
    if-eqz v5, :cond_5a

    .line 72
    invoke-virtual {v4}, Lcom/android/server/enterprise/threatdefense/RUFSParser;->getPolicyVersion()I

    move-result v0

    invoke-virtual {v5}, Lcom/android/server/enterprise/threatdefense/RUFSParser;->getPolicyVersion()I

    move-result v1

    if-lt v0, v1, :cond_5b

    .line 73
    const/4 v6, 0x1

    goto :goto_5b

    .line 76
    :cond_5a
    const/4 v6, 0x1

    .line 79
    :cond_5b
    :goto_5b
    sget-boolean v0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->DEBUG:Z

    if-eqz v0, :cond_75

    .line 80
    sget-object v0, Lcom/android/server/enterprise/threatdefense/RUFSPolicy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Read system path="

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :cond_75
    if-eqz v6, :cond_79

    move-object v0, v4

    goto :goto_7a

    :cond_79
    move-object v0, v5

    :goto_7a
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/threatdefense/RUFSPolicy;->readPolicyVersion(Lcom/android/server/enterprise/threatdefense/RUFSParser;)I

    move-result v0
    :try_end_7e
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_7e} :catch_8e
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_7e} :catch_87
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_7e} :catch_7f

    .end local v2    # "system":Ljava/io/File;
    .end local v3    # "data":Ljava/io/File;
    .end local v4    # "systemParser":Lcom/android/server/enterprise/threatdefense/RUFSParser;
    .end local v5    # "dataParser":Lcom/android/server/enterprise/threatdefense/RUFSParser;
    .end local v6    # "useSystemPolicy":Z
    .local v0, "ret":I
    goto :goto_94

    .line 89
    .end local v0    # "ret":I
    :catch_7f
    move-exception v0

    .line 90
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 91
    const/16 v1, -0x68

    move v0, v1

    .local v1, "ret":I
    goto :goto_95

    .line 86
    .end local v0    # "nfe":Ljava/lang/NumberFormatException;
    .end local v1    # "ret":I
    :catch_87
    move-exception v0

    .line 87
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 88
    const/16 v0, -0x6b

    .local v0, "ret":I
    goto :goto_94

    .line 83
    .end local v0    # "ret":I
    :catch_8e
    move-exception v0

    .line 84
    .local v0, "se":Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 85
    const/16 v0, -0x6d

    .line 92
    .local v0, "ret":I
    :goto_94
    nop

    .line 93
    :goto_95
    return v0
.end method

.method private readData(Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p1, "path"    # Ljava/lang/String;

    .line 148
    const-string v0, "IOException"

    if-nez p1, :cond_6

    .line 149
    const/4 v0, 0x0

    return-object v0

    .line 151
    :cond_6
    const/4 v1, 0x0

    .line 152
    .local v1, "result":Ljava/lang/String;
    const/4 v2, 0x0

    .line 153
    .local v2, "br":Ljava/io/BufferedReader;
    const/4 v3, 0x0

    .line 155
    .local v3, "ins":Ljava/io/InputStream;
    :try_start_9
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v3, v4

    .line 156
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v5, v3, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v2, v4

    .line 157
    invoke-virtual {v2}, Ljava/io/BufferedReader;->lines()Ljava/util/stream/Stream;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;
    :try_end_2e
    .catch Ljava/lang/SecurityException; {:try_start_9 .. :try_end_2e} :catch_67
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_2e} :catch_41
    .catchall {:try_start_9 .. :try_end_2e} :catchall_3f

    move-object v1, v4

    .line 164
    nop

    .line 165
    :try_start_30
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 166
    nop

    .line 167
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_37} :catch_38

    .line 170
    :cond_37
    :goto_37
    goto :goto_7a

    .line 168
    :catch_38
    move-exception v4

    .line 169
    .local v4, "e":Ljava/io/IOException;
    sget-object v5, Lcom/android/server/enterprise/threatdefense/RUFSPolicy;->TAG:Ljava/lang/String;

    invoke-static {v5, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 171
    .end local v4    # "e":Ljava/io/IOException;
    goto :goto_7a

    .line 163
    :catchall_3f
    move-exception v4

    goto :goto_7b

    .line 160
    :catch_41
    move-exception v4

    .line 161
    .local v4, "e":Ljava/io/FileNotFoundException;
    :try_start_42
    sget-object v5, Lcom/android/server/enterprise/threatdefense/RUFSPolicy;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "FileNotFoundException : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5c
    .catchall {:try_start_42 .. :try_end_5c} :catchall_3f

    .line 164
    .end local v4    # "e":Ljava/io/FileNotFoundException;
    if-eqz v2, :cond_61

    .line 165
    :try_start_5e
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 166
    :cond_61
    if-eqz v3, :cond_37

    .line 167
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_66} :catch_38

    goto :goto_37

    .line 158
    :catch_67
    move-exception v4

    .line 159
    .local v4, "e":Ljava/lang/SecurityException;
    :try_start_68
    sget-object v5, Lcom/android/server/enterprise/threatdefense/RUFSPolicy;->TAG:Ljava/lang/String;

    const-string v6, "SecurityException"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6f
    .catchall {:try_start_68 .. :try_end_6f} :catchall_3f

    .line 164
    .end local v4    # "e":Ljava/lang/SecurityException;
    if-eqz v2, :cond_74

    .line 165
    :try_start_71
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 166
    :cond_74
    if-eqz v3, :cond_37

    .line 167
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_79
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_79} :catch_38

    goto :goto_37

    .line 172
    :goto_7a
    return-object v1

    .line 164
    :goto_7b
    if-eqz v2, :cond_83

    .line 165
    :try_start_7d
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    goto :goto_83

    .line 168
    :catch_81
    move-exception v5

    goto :goto_89

    .line 166
    :cond_83
    :goto_83
    if-eqz v3, :cond_8f

    .line 167
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_88
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_88} :catch_81

    goto :goto_8f

    .line 169
    .local v5, "e":Ljava/io/IOException;
    :goto_89
    sget-object v6, Lcom/android/server/enterprise/threatdefense/RUFSPolicy;->TAG:Ljava/lang/String;

    invoke-static {v6, v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_90

    .line 170
    .end local v5    # "e":Ljava/io/IOException;
    :cond_8f
    :goto_8f
    nop

    .line 171
    :goto_90
    throw v4
.end method

.method private readDecodedData(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "encodedData"    # Ljava/lang/String;

    .line 139
    new-instance v0, Lcom/android/server/enterprise/threatdefense/MTDSignature;

    invoke-direct {v0, p1}, Lcom/android/server/enterprise/threatdefense/MTDSignature;-><init>(Ljava/lang/String;)V

    .line 140
    .local v0, "signature":Lcom/android/server/enterprise/threatdefense/MTDSignature;
    invoke-virtual {v0}, Lcom/android/server/enterprise/threatdefense/MTDSignature;->getVerifiedData()Ljava/lang/String;

    move-result-object v1

    .line 141
    .local v1, "decodedData":Ljava/lang/String;
    if-nez v1, :cond_12

    .line 142
    sget-object v2, Lcom/android/server/enterprise/threatdefense/RUFSPolicy;->TAG:Ljava/lang/String;

    const-string v3, "Signature verification failed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_12
    return-object v1
.end method

.method private readPolicyVersion(Lcom/android/server/enterprise/threatdefense/RUFSParser;)I
    .registers 11
    .param p1, "parser"    # Lcom/android/server/enterprise/threatdefense/RUFSParser;

    .line 98
    if-nez p1, :cond_5

    .line 99
    const/16 v0, -0x6a

    return v0

    .line 103
    :cond_5
    :try_start_5
    sget-boolean v0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->DEBUG:Z

    if-eqz v0, :cond_23

    .line 104
    sget-object v0, Lcom/android/server/enterprise/threatdefense/RUFSPolicy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RUFSParser : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/enterprise/threatdefense/RUFSParser;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :cond_23
    invoke-virtual {p1}, Lcom/android/server/enterprise/threatdefense/RUFSParser;->getExceptionList()Ljava/util/ArrayList;

    move-result-object v0

    .line 107
    .local v0, "updatePackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1}, Lcom/android/server/enterprise/threatdefense/RUFSParser;->getVersion()I

    move-result v1

    .line 108
    .local v1, "version":I
    if-eqz v0, :cond_a3

    .line 109
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_31
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 110
    .local v3, "s":Ljava/lang/String;
    sget-boolean v4, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->DEBUG:Z

    if-eqz v4, :cond_57

    .line 111
    sget-object v4, Lcom/android/server/enterprise/threatdefense/RUFSPolicy;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "exception list : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :cond_57
    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 114
    .local v4, "line":[Ljava/lang/String;
    array-length v5, v4

    const/4 v6, 0x1

    if-le v5, v6, :cond_a2

    iget-object v5, p0, Lcom/android/server/enterprise/threatdefense/RUFSPolicy;->mPackageName:Ljava/lang/String;

    if-eqz v5, :cond_a2

    iget-object v5, p0, Lcom/android/server/enterprise/threatdefense/RUFSPolicy;->mPackageName:Ljava/lang/String;

    const/4 v7, 0x0

    aget-object v8, v4, v7

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a2

    .line 115
    aget-object v2, v4, v6

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    move v1, v2

    .line 116
    sget-object v2, Lcom/android/server/enterprise/threatdefense/RUFSPolicy;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception package : "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, v4, v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " version : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v4, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "=="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a1
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_a1} :catch_ad
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_a1} :catch_a5

    .line 118
    goto :goto_a3

    .line 120
    .end local v3    # "s":Ljava/lang/String;
    .end local v4    # "line":[Ljava/lang/String;
    :cond_a2
    goto :goto_31

    .line 122
    :cond_a3
    :goto_a3
    move v0, v1

    .end local v1    # "version":I
    .local v0, "ret":I
    goto :goto_b3

    .line 126
    .end local v0    # "ret":I
    :catch_a5
    move-exception v0

    .line 127
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 128
    const/16 v1, -0x68

    move v0, v1

    .local v1, "ret":I
    goto :goto_b4

    .line 123
    .end local v0    # "nfe":Ljava/lang/NumberFormatException;
    .end local v1    # "ret":I
    :catch_ad
    move-exception v0

    .line 124
    .local v0, "se":Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 125
    const/16 v0, -0x6d

    .line 129
    .local v0, "ret":I
    :goto_b3
    nop

    .line 130
    :goto_b4
    return v0
.end method


# virtual methods
.method getPolicyVersion()I
    .registers 2

    .line 40
    iget v0, p0, Lcom/android/server/enterprise/threatdefense/RUFSPolicy;->mPolicyVersion:I

    return v0
.end method
