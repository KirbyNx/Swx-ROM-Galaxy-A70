.class public Lcom/att/iqi/IQIBridgeLoader;
.super Ljava/lang/Object;
.source "IQIBridgeLoader.java"


# static fields
.field private static final BRIDGE_LIBRARY_NAME:Ljava/lang/String;

.field private static final BRIDGE_LIBRARY_PATH:Ljava/lang/String;

.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "IQIBridgeLoader"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 42
    invoke-static {}, Lcom/att/iqi/IQIBridgeLoader;->getIqiLibPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/att/iqi/IQIBridgeLoader;->BRIDGE_LIBRARY_PATH:Ljava/lang/String;

    .line 43
    const-string/jumbo v0, "iqi_bridge"

    invoke-static {v0}, Ljava/lang/System;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/att/iqi/IQIBridgeLoader;->BRIDGE_LIBRARY_NAME:Ljava/lang/String;

    .line 45
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/att/iqi/IQIBridgeLoader;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static copyBridgeLibrary(Ljava/lang/String;)V
    .registers 11
    .param p0, "packageLibPath"    # Ljava/lang/String;

    .line 73
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    sget-object v2, Lcom/att/iqi/IQIBridgeLoader;->BRIDGE_LIBRARY_NAME:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 74
    invoke-static {p0, v1}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    .line 76
    .local v1, "packageLibrary":Ljava/nio/file/Path;
    sget-char v2, Ljava/io/File;->separatorChar:C

    .line 77
    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 76
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 78
    .local v2, "abiDir":Ljava/lang/String;
    sget-object v4, Lcom/att/iqi/IQIBridgeLoader;->BRIDGE_LIBRARY_PATH:Ljava/lang/String;

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/String;

    aput-object v2, v6, v3

    sget-object v7, Lcom/att/iqi/IQIBridgeLoader;->BRIDGE_LIBRARY_NAME:Ljava/lang/String;

    aput-object v7, v6, v0

    .line 79
    invoke-static {v4, v6}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v4

    .line 80
    .local v4, "systemLibrary":Ljava/nio/file/Path;
    sget-boolean v6, Lcom/att/iqi/IQIBridgeLoader;->DEBUG:Z

    const-string v7, "IQIBridgeLoader"

    if-eqz v6, :cond_4d

    .line 81
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "packageLibrary ["

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, "] systemLibrary ["

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, "]"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_4d
    invoke-static {v1, v4}, Lcom/att/iqi/IQIBridgeLoader;->shouldCopy(Ljava/nio/file/Path;Ljava/nio/file/Path;)Z

    move-result v6

    if-eqz v6, :cond_ac

    .line 85
    sget-boolean v6, Lcom/att/iqi/IQIBridgeLoader;->DEBUG:Z

    if-eqz v6, :cond_5c

    const-string v6, "Performing copy..."

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :cond_5c
    :try_start_5c
    new-array v6, v5, [Ljava/nio/file/CopyOption;

    sget-object v8, Ljava/nio/file/StandardCopyOption;->REPLACE_EXISTING:Ljava/nio/file/StandardCopyOption;

    aput-object v8, v6, v3

    sget-object v8, Ljava/nio/file/StandardCopyOption;->COPY_ATTRIBUTES:Ljava/nio/file/StandardCopyOption;

    aput-object v8, v6, v0

    invoke-static {v4, v1, v6}, Ljava/nio/file/Files;->copy(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;

    .line 92
    new-instance v6, Ljava/util/HashSet;

    const/4 v8, 0x7

    new-array v8, v8, [Ljava/nio/file/attribute/PosixFilePermission;

    sget-object v9, Ljava/nio/file/attribute/PosixFilePermission;->OTHERS_EXECUTE:Ljava/nio/file/attribute/PosixFilePermission;

    aput-object v9, v8, v3

    sget-object v3, Ljava/nio/file/attribute/PosixFilePermission;->OTHERS_READ:Ljava/nio/file/attribute/PosixFilePermission;

    aput-object v3, v8, v0

    sget-object v0, Ljava/nio/file/attribute/PosixFilePermission;->GROUP_EXECUTE:Ljava/nio/file/attribute/PosixFilePermission;

    aput-object v0, v8, v5

    const/4 v0, 0x3

    sget-object v3, Ljava/nio/file/attribute/PosixFilePermission;->GROUP_READ:Ljava/nio/file/attribute/PosixFilePermission;

    aput-object v3, v8, v0

    const/4 v0, 0x4

    sget-object v3, Ljava/nio/file/attribute/PosixFilePermission;->OWNER_EXECUTE:Ljava/nio/file/attribute/PosixFilePermission;

    aput-object v3, v8, v0

    const/4 v0, 0x5

    sget-object v3, Ljava/nio/file/attribute/PosixFilePermission;->OWNER_READ:Ljava/nio/file/attribute/PosixFilePermission;

    aput-object v3, v8, v0

    const/4 v0, 0x6

    sget-object v3, Ljava/nio/file/attribute/PosixFilePermission;->OWNER_WRITE:Ljava/nio/file/attribute/PosixFilePermission;

    aput-object v3, v8, v0

    .line 93
    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object v0, v6

    .line 101
    .local v0, "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/file/attribute/PosixFilePermission;>;"
    invoke-static {v1, v0}, Ljava/nio/file/Files;->setPosixFilePermissions(Ljava/nio/file/Path;Ljava/util/Set;)Ljava/nio/file/Path;

    .line 102
    sget-boolean v3, Lcom/att/iqi/IQIBridgeLoader;->DEBUG:Z

    if-eqz v3, :cond_ab

    const-string v3, "Copy completed"

    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a2
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_a2} :catch_a3

    goto :goto_ab

    .line 103
    .end local v0    # "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/file/attribute/PosixFilePermission;>;"
    :catch_a3
    move-exception v0

    .line 104
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 105
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_ab
    :goto_ab
    goto :goto_b5

    .line 107
    :cond_ac
    sget-boolean v0, Lcom/att/iqi/IQIBridgeLoader;->DEBUG:Z

    if-eqz v0, :cond_b5

    const-string v0, "No copy needed"

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :cond_b5
    :goto_b5
    return-void
.end method

.method private static getIqiLibPath()Ljava/lang/String;
    .registers 4

    .line 145
    const-string v0, "/system/carrier/priv-app/AttIqi_ATT/lib/"

    .line 146
    .local v0, "libPath":Ljava/lang/String;
    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    invoke-static {v0, v2}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v2

    new-array v3, v1, [Ljava/nio/file/LinkOption;

    invoke-static {v2, v3}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v2

    if-nez v2, :cond_23

    .line 147
    const-string v0, "/system/carrier/priv-app/AttIqi_AIO/lib/"

    .line 148
    new-array v2, v1, [Ljava/lang/String;

    invoke-static {v0, v2}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v2

    new-array v1, v1, [Ljava/nio/file/LinkOption;

    invoke-static {v2, v1}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v1

    if-nez v1, :cond_23

    .line 149
    const-string v0, "/system/priv-app/AttIqi_ATT/lib/"

    .line 152
    :cond_23
    sget-boolean v1, Lcom/att/iqi/IQIBridgeLoader;->DEBUG:Z

    if-eqz v1, :cond_3d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Lib Path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IQIBridgeLoader"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :cond_3d
    return-object v0
.end method

.method private static isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 56
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 58
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const/16 v1, 0x400

    .line 59
    :try_start_6
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 60
    .local v1, "pkgInfo":Landroid/content/pm/PackageInfo;
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 61
    .local v2, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v2, :cond_11

    .line 62
    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;
    :try_end_10
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_10} :catch_12

    return-object v3

    .line 66
    .end local v1    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v2    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_11
    goto :goto_13

    .line 64
    :catch_12
    move-exception v1

    .line 67
    :goto_13
    const/4 v1, 0x0

    return-object v1
.end method

.method static loadBridgeLibrary(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 49
    invoke-static {p0, p1}, Lcom/att/iqi/IQIBridgeLoader;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, "packageLibPath":Ljava/lang/String;
    if-eqz v0, :cond_9

    .line 51
    invoke-static {v0}, Lcom/att/iqi/IQIBridgeLoader;->copyBridgeLibrary(Ljava/lang/String;)V

    .line 53
    :cond_9
    return-void
.end method

.method private static shouldCopy(Ljava/nio/file/Path;Ljava/nio/file/Path;)Z
    .registers 13
    .param p0, "appLibrary"    # Ljava/nio/file/Path;
    .param p1, "systemLibrary"    # Ljava/nio/file/Path;

    .line 113
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/nio/file/LinkOption;

    invoke-static {p0, v1}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v1

    .line 114
    .local v1, "appLibraryExists":Z
    new-array v2, v0, [Ljava/nio/file/LinkOption;

    invoke-static {p1, v2}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v2

    .line 115
    .local v2, "systemLibraryExists":Z
    const-wide/16 v3, -0x1

    .line 116
    .local v3, "appLibraryCreationDate":J
    const-wide/16 v5, -0x1

    .line 117
    .local v5, "systemLibraryCreationDate":J
    const-string v7, "IQIBridgeLoader"

    if-eqz v1, :cond_2f

    .line 119
    :try_start_15
    const-class v8, Ljava/nio/file/attribute/BasicFileAttributes;

    new-array v9, v0, [Ljava/nio/file/LinkOption;

    .line 120
    invoke-static {p0, v8, v9}, Ljava/nio/file/Files;->readAttributes(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/BasicFileAttributes;

    move-result-object v8

    .line 121
    .local v8, "appLibAttrs":Ljava/nio/file/attribute/BasicFileAttributes;
    invoke-interface {v8}, Ljava/nio/file/attribute/BasicFileAttributes;->creationTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v9

    invoke-virtual {v9}, Ljava/nio/file/attribute/FileTime;->toMillis()J

    move-result-wide v9
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_25} :catch_27

    move-wide v3, v9

    .line 124
    .end local v8    # "appLibAttrs":Ljava/nio/file/attribute/BasicFileAttributes;
    goto :goto_2f

    .line 122
    :catch_27
    move-exception v8

    .line 123
    .local v8, "e":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 126
    .end local v8    # "e":Ljava/io/IOException;
    :cond_2f
    :goto_2f
    if-eqz v2, :cond_4b

    .line 128
    :try_start_31
    const-class v8, Ljava/nio/file/attribute/BasicFileAttributes;

    new-array v9, v0, [Ljava/nio/file/LinkOption;

    .line 129
    invoke-static {p1, v8, v9}, Ljava/nio/file/Files;->readAttributes(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/BasicFileAttributes;

    move-result-object v8

    .line 130
    .local v8, "systemLibAttrs":Ljava/nio/file/attribute/BasicFileAttributes;
    invoke-interface {v8}, Ljava/nio/file/attribute/BasicFileAttributes;->creationTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v9

    invoke-virtual {v9}, Ljava/nio/file/attribute/FileTime;->toMillis()J

    move-result-wide v9
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_41} :catch_43

    move-wide v5, v9

    .line 133
    .end local v8    # "systemLibAttrs":Ljava/nio/file/attribute/BasicFileAttributes;
    goto :goto_4b

    .line 131
    :catch_43
    move-exception v8

    .line 132
    .local v8, "e":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 135
    .end local v8    # "e":Ljava/io/IOException;
    :cond_4b
    :goto_4b
    sget-boolean v8, Lcom/att/iqi/IQIBridgeLoader;->DEBUG:Z

    if-eqz v8, :cond_80

    .line 136
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "appLibraryExists ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, "] systemLibraryExists ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, "] appLibraryCreationDate ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, "] systemLibraryCreationDate ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :cond_80
    if-eqz v2, :cond_89

    if-eqz v1, :cond_88

    cmp-long v7, v5, v3

    if-lez v7, :cond_89

    :cond_88
    const/4 v0, 0x1

    :cond_89
    return v0
.end method
