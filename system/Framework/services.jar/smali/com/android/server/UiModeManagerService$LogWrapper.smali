.class Lcom/android/server/UiModeManagerService$LogWrapper;
.super Ljava/lang/Object;
.source "UiModeManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/UiModeManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LogWrapper"
.end annotation


# static fields
.field private static final LOG_FILE_MAX_COUNT:I = 0x2

.field private static final LOG_FILE_NAME:Ljava/lang/String; = "/data/log/dark_mode_log%g.txt"

.field private static final LOG_FILE_SIZE_LIMIT:I = 0x1400

.field private static final TAG:Ljava/lang/String; = "LogWrapper"

.field private static final date:Ljava/util/Date;

.field private static fileHandler:Ljava/util/logging/FileHandler;

.field private static final formatter:Landroid/icu/text/SimpleDateFormat;

.field private static logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 2043
    new-instance v0, Landroid/icu/text/SimpleDateFormat;

    .line 2044
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "MM-dd HH:mm:ss.SSS: "

    invoke-direct {v0, v2, v1}, Landroid/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/android/server/UiModeManagerService$LogWrapper;->formatter:Landroid/icu/text/SimpleDateFormat;

    .line 2045
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    sput-object v0, Lcom/android/server/UiModeManagerService$LogWrapper;->date:Ljava/util/Date;

    .line 2051
    :try_start_14
    new-instance v0, Ljava/util/logging/FileHandler;

    const-string v1, "/data/log/dark_mode_log%g.txt"

    const/16 v2, 0x1400

    const/4 v3, 0x2

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/logging/FileHandler;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/android/server/UiModeManagerService$LogWrapper;->fileHandler:Ljava/util/logging/FileHandler;

    .line 2054
    new-instance v1, Lcom/android/server/UiModeManagerService$LogWrapper$1;

    invoke-direct {v1}, Lcom/android/server/UiModeManagerService$LogWrapper$1;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/logging/FileHandler;->setFormatter(Ljava/util/logging/Formatter;)V

    .line 2066
    const-class v0, Lcom/android/server/UiModeManagerService$LogWrapper;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/android/server/UiModeManagerService$LogWrapper;->logger:Ljava/util/logging/Logger;

    .line 2067
    sget-object v1, Lcom/android/server/UiModeManagerService$LogWrapper;->fileHandler:Ljava/util/logging/FileHandler;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->addHandler(Ljava/util/logging/Handler;)V

    .line 2068
    sget-object v0, Lcom/android/server/UiModeManagerService$LogWrapper;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->ALL:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->setLevel(Ljava/util/logging/Level;)V

    .line 2069
    sget-object v0, Lcom/android/server/UiModeManagerService$LogWrapper;->logger:Ljava/util/logging/Logger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->setUseParentHandlers(Z)V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_47} :catch_48

    .line 2072
    goto :goto_63

    .line 2070
    :catch_48
    move-exception v0

    .line 2071
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not use LogWrapper "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LogWrapper"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2073
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_63
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 2038
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$5500()Ljava/util/Date;
    .registers 1

    .line 2038
    sget-object v0, Lcom/android/server/UiModeManagerService$LogWrapper;->date:Ljava/util/Date;

    return-object v0
.end method

.method static synthetic access$5600()Landroid/icu/text/SimpleDateFormat;
    .registers 1

    .line 2038
    sget-object v0, Lcom/android/server/UiModeManagerService$LogWrapper;->formatter:Landroid/icu/text/SimpleDateFormat;

    return-object v0
.end method

.method public static getLogText()Ljava/lang/StringBuilder;
    .registers 9

    .line 2084
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/io/File;

    .line 2085
    .local v0, "files":[Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/log/dark_mode_log0.txt"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 2086
    new-instance v1, Ljava/io/File;

    const-string v3, "/data/log/dark_mode_log1.txt"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x1

    aput-object v1, v0, v3

    .line 2088
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2090
    .local v1, "text":Ljava/lang/StringBuilder;
    array-length v3, v0

    :goto_1d
    if-ge v2, v3, :cond_6f

    aget-object v4, v0, v2

    .line 2091
    .local v4, "openFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_28

    .line 2092
    goto :goto_49

    .line 2095
    :cond_28
    :try_start_28
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v4}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_32} :catch_56

    .line 2098
    .local v5, "br":Ljava/io/BufferedReader;
    :goto_32
    :try_start_32
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    move-object v7, v6

    .local v7, "line":Ljava/lang/String;
    const/16 v8, 0xa

    if-eqz v6, :cond_42

    .line 2099
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2100
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_41
    .catchall {:try_start_32 .. :try_end_41} :catchall_4c

    goto :goto_32

    .line 2102
    .end local v7    # "line":Ljava/lang/String;
    :cond_42
    :try_start_42
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_45} :catch_56

    .line 2105
    .end local v5    # "br":Ljava/io/BufferedReader;
    nop

    .line 2106
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2090
    .end local v4    # "openFile":Ljava/io/File;
    :goto_49
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    .line 2095
    .restart local v4    # "openFile":Ljava/io/File;
    .restart local v5    # "br":Ljava/io/BufferedReader;
    :catchall_4c
    move-exception v2

    :try_start_4d
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_50
    .catchall {:try_start_4d .. :try_end_50} :catchall_51

    goto :goto_55

    :catchall_51
    move-exception v3

    :try_start_52
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "files":[Ljava/io/File;
    .end local v1    # "text":Ljava/lang/StringBuilder;
    .end local v4    # "openFile":Ljava/io/File;
    :goto_55
    throw v2
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_56} :catch_56

    .line 2102
    .end local v5    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "files":[Ljava/io/File;
    .restart local v1    # "text":Ljava/lang/StringBuilder;
    .restart local v4    # "openFile":Ljava/io/File;
    :catch_56
    move-exception v2

    .line 2103
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can not use getLogText : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "LogWrapper"

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2104
    const/4 v3, 0x0

    return-object v3

    .line 2109
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "openFile":Ljava/io/File;
    :cond_6f
    return-object v1
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 2076
    sget-object v0, Lcom/android/server/UiModeManagerService$LogWrapper;->logger:Ljava/util/logging/Logger;

    if-eqz v0, :cond_23

    .line 2077
    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    .line 2078
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p1, v2, v3

    .line 2077
    const-string v3, "V %s(%d): %s\n"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 2080
    :cond_23
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2081
    return-void
.end method
