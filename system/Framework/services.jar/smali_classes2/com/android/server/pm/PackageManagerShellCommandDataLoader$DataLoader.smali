.class Lcom/android/server/pm/PackageManagerShellCommandDataLoader$DataLoader;
.super Ljava/lang/Object;
.source "PackageManagerShellCommandDataLoader.java"

# interfaces
.implements Landroid/service/dataloader/DataLoaderService$DataLoader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerShellCommandDataLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DataLoader"
.end annotation


# instance fields
.field private mConnector:Landroid/service/dataloader/DataLoaderService$FileSystemConnector;

.field private mParams:Landroid/content/pm/DataLoaderParams;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$DataLoader;->mParams:Landroid/content/pm/DataLoaderParams;

    .line 186
    iput-object v0, p0, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$DataLoader;->mConnector:Landroid/service/dataloader/DataLoaderService$FileSystemConnector;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/PackageManagerShellCommandDataLoader$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/android/server/pm/PackageManagerShellCommandDataLoader$1;

    .line 184
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$DataLoader;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/content/pm/DataLoaderParams;Landroid/service/dataloader/DataLoaderService$FileSystemConnector;)Z
    .registers 4
    .param p1, "dataLoaderParams"    # Landroid/content/pm/DataLoaderParams;
    .param p2, "connector"    # Landroid/service/dataloader/DataLoaderService$FileSystemConnector;

    .line 191
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$DataLoader;->mParams:Landroid/content/pm/DataLoaderParams;

    .line 192
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$DataLoader;->mConnector:Landroid/service/dataloader/DataLoaderService$FileSystemConnector;

    .line 193
    const/4 v0, 0x1

    return v0
.end method

.method public onPrepareImage(Ljava/util/Collection;Ljava/util/Collection;)Z
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/content/pm/InstallationFile;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 199
    .local p1, "addedFiles":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/pm/InstallationFile;>;"
    .local p2, "removedFiles":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$DataLoader;->mParams:Landroid/content/pm/DataLoaderParams;

    invoke-virtual {v0}, Landroid/content/pm/DataLoaderParams;->getArguments()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerShellCommandDataLoader;->lookupShellCommand(Ljava/lang/String;)Landroid/os/ShellCommand;

    move-result-object v2

    .line 200
    .local v2, "shellCommand":Landroid/os/ShellCommand;
    const/4 v3, 0x0

    const-string v4, "PackageManagerShellCommandDataLoader"

    if-nez v2, :cond_17

    .line 201
    const-string v0, "Missing shell command."

    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    return v3

    .line 205
    :cond_17
    :try_start_17
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_a8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/InstallationFile;

    .line 206
    .local v5, "file":Landroid/content/pm/InstallationFile;
    invoke-virtual {v5}, Landroid/content/pm/InstallationFile;->getMetadata()[B

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;->fromByteArray([B)Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;

    move-result-object v7

    .line 207
    .local v7, "metadata":Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;
    if-nez v7, :cond_4b

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid metadata for file: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/content/pm/InstallationFile;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    return v3

    .line 211
    :cond_4b
    invoke-virtual {v7}, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;->getMode()B

    move-result v8

    if-eqz v8, :cond_92

    if-eq v8, v6, :cond_6c

    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unsupported metadata mode: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;->getMode()B

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6b
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_6b} :catch_a9

    .line 230
    return v3

    .line 218
    :cond_6c
    const/4 v6, 0x0

    .line 220
    .local v6, "incomingFd":Landroid/os/ParcelFileDescriptor;
    :try_start_6d
    invoke-virtual {v7}, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;->getData()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Lcom/android/server/pm/PackageManagerShellCommandDataLoader;->getLocalFilePFD(Landroid/os/ShellCommand;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v15
    :try_end_75
    .catchall {:try_start_6d .. :try_end_75} :catchall_8c

    .line 221
    .end local v6    # "incomingFd":Landroid/os/ParcelFileDescriptor;
    .local v15, "incomingFd":Landroid/os/ParcelFileDescriptor;
    :try_start_75
    iget-object v9, v1, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$DataLoader;->mConnector:Landroid/service/dataloader/DataLoaderService$FileSystemConnector;

    invoke-virtual {v5}, Landroid/content/pm/InstallationFile;->getName()Ljava/lang/String;

    move-result-object v10

    const-wide/16 v11, 0x0

    invoke-virtual {v15}, Landroid/os/ParcelFileDescriptor;->getStatSize()J

    move-result-wide v13

    invoke-virtual/range {v9 .. v15}, Landroid/service/dataloader/DataLoaderService$FileSystemConnector;->writeData(Ljava/lang/String;JJLandroid/os/ParcelFileDescriptor;)V
    :try_end_84
    .catchall {:try_start_75 .. :try_end_84} :catchall_89

    .line 224
    :try_start_84
    invoke-static {v15}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 225
    nop

    .line 226
    goto :goto_a6

    .line 224
    :catchall_89
    move-exception v0

    move-object v6, v15

    goto :goto_8d

    .end local v15    # "incomingFd":Landroid/os/ParcelFileDescriptor;
    .restart local v6    # "incomingFd":Landroid/os/ParcelFileDescriptor;
    :catchall_8c
    move-exception v0

    :goto_8d
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 225
    nop

    .end local v2    # "shellCommand":Landroid/os/ShellCommand;
    .end local p0    # "this":Lcom/android/server/pm/PackageManagerShellCommandDataLoader$DataLoader;
    .end local p1    # "addedFiles":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/pm/InstallationFile;>;"
    .end local p2    # "removedFiles":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    throw v0

    .line 213
    .end local v6    # "incomingFd":Landroid/os/ParcelFileDescriptor;
    .restart local v2    # "shellCommand":Landroid/os/ShellCommand;
    .restart local p0    # "this":Lcom/android/server/pm/PackageManagerShellCommandDataLoader$DataLoader;
    .restart local p1    # "addedFiles":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/pm/InstallationFile;>;"
    .restart local p2    # "removedFiles":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    :cond_92
    invoke-static {v2}, Lcom/android/server/pm/PackageManagerShellCommandDataLoader;->getStdInPFD(Landroid/os/ShellCommand;)Landroid/os/ParcelFileDescriptor;

    move-result-object v14

    .line 214
    .local v14, "inFd":Landroid/os/ParcelFileDescriptor;
    iget-object v8, v1, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$DataLoader;->mConnector:Landroid/service/dataloader/DataLoaderService$FileSystemConnector;

    invoke-virtual {v5}, Landroid/content/pm/InstallationFile;->getName()Ljava/lang/String;

    move-result-object v9

    const-wide/16 v10, 0x0

    invoke-virtual {v5}, Landroid/content/pm/InstallationFile;->getLengthBytes()J

    move-result-wide v12

    invoke-virtual/range {v8 .. v14}, Landroid/service/dataloader/DataLoaderService$FileSystemConnector;->writeData(Ljava/lang/String;JJLandroid/os/ParcelFileDescriptor;)V
    :try_end_a5
    .catch Ljava/io/IOException; {:try_start_84 .. :try_end_a5} :catch_a9

    .line 215
    nop

    .line 232
    .end local v5    # "file":Landroid/content/pm/InstallationFile;
    .end local v7    # "metadata":Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;
    .end local v14    # "inFd":Landroid/os/ParcelFileDescriptor;
    :goto_a6
    goto/16 :goto_1b

    .line 233
    :cond_a8
    return v6

    .line 234
    :catch_a9
    move-exception v0

    .line 235
    .local v0, "e":Ljava/io/IOException;
    const-string v5, "Exception while streaming files"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 236
    return v3
.end method
