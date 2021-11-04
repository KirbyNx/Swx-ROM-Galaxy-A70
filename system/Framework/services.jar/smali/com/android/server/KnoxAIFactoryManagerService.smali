.class public Lcom/android/server/KnoxAIFactoryManagerService;
.super Lcom/samsung/android/knoxai/factory/IKnoxAIFactoryService$Stub;
.source "KnoxAIFactoryManagerService.java"


# static fields
.field private static final KNOXAI_PRIV_KEY_DIR:Ljava/lang/String; = "/efs/knoxai/"

.field private static final KNOXAI_PRIV_KEY_FILE:Ljava/lang/String; = "priv.dat"

.field private static final LAZY_BOOT_COMPLETE:Ljava/lang/String; = "com.samsung.intent.action.LAZY_BOOT_COMPLETE"

.field static TAG:Ljava/lang/String;

.field private static mContext:Landroid/content/Context;


# instance fields
.field KnoxAIFactoryBroadcastReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 36
    const-string v0, "KnoxAIFactoryManagerService"

    sput-object v0, Lcom/android/server/KnoxAIFactoryManagerService;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 43
    invoke-direct {p0}, Lcom/samsung/android/knoxai/factory/IKnoxAIFactoryService$Stub;-><init>()V

    .line 51
    new-instance v0, Lcom/android/server/KnoxAIFactoryManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/KnoxAIFactoryManagerService$1;-><init>(Lcom/android/server/KnoxAIFactoryManagerService;)V

    iput-object v0, p0, Lcom/android/server/KnoxAIFactoryManagerService;->KnoxAIFactoryBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 44
    sget-object v0, Lcom/android/server/KnoxAIFactoryManagerService;->TAG:Ljava/lang/String;

    const-string v1, "Start KnoxAIFactoryManagerService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    sput-object p1, Lcom/android/server/KnoxAIFactoryManagerService;->mContext:Landroid/content/Context;

    .line 46
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 47
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "com.samsung.intent.action.LAZY_BOOT_COMPLETE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 48
    sget-object v1, Lcom/android/server/KnoxAIFactoryManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/KnoxAIFactoryManagerService;->KnoxAIFactoryBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 49
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/KnoxAIFactoryManagerService;[B)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/KnoxAIFactoryManagerService;
    .param p1, "x1"    # [B

    .line 35
    invoke-direct {p0, p1}, Lcom/android/server/KnoxAIFactoryManagerService;->saveKey([B)Z

    move-result v0

    return v0
.end method

.method static native knoxai_fac_trustedapp_load()I
.end method

.method static native knoxai_fac_trustedapp_unload()I
.end method

.method private saveKey([B)Z
    .registers 7
    .param p1, "encryptedKey"    # [B

    .line 106
    const/4 v0, 0x0

    .line 107
    .local v0, "ret":Z
    const/4 v1, 0x0

    .line 109
    .local v1, "outputStream":Ljava/io/FileOutputStream;
    :try_start_2
    new-instance v2, Ljava/io/File;

    const-string v3, "/efs/knoxai/"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 110
    .local v2, "dir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_12

    .line 111
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 113
    :cond_12
    if-eqz p1, :cond_39

    .line 114
    array-length v3, p1

    if-eqz v3, :cond_31

    .line 115
    new-instance v3, Ljava/io/File;

    const-string/jumbo v4, "priv.dat"

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 116
    .local v3, "outputFile":Ljava/io/File;
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v1, v4

    .line 117
    invoke-virtual {v1, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 118
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/FileDescriptor;->sync()V

    .line 119
    const/4 v0, 0x1

    .line 120
    .end local v3    # "outputFile":Ljava/io/File;
    goto :goto_4c

    .line 121
    :cond_31
    sget-object v3, Lcom/android/server/KnoxAIFactoryManagerService;->TAG:Ljava/lang/String;

    const-string v4, "KnoxAI Factory key - invalid size"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4c

    .line 124
    :cond_39
    sget-object v3, Lcom/android/server/KnoxAIFactoryManagerService;->TAG:Ljava/lang/String;

    const-string v4, "KnoxAI Factory key - NULL"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_40
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_40} :catch_48
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_40} :catch_43
    .catchall {:try_start_2 .. :try_end_40} :catchall_41

    goto :goto_4c

    .line 131
    .end local v2    # "dir":Ljava/io/File;
    :catchall_41
    move-exception v2

    goto :goto_51

    .line 128
    :catch_43
    move-exception v2

    .line 129
    .local v2, "e":Ljava/io/IOException;
    :try_start_44
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .end local v2    # "e":Ljava/io/IOException;
    goto :goto_4c

    .line 126
    :catch_48
    move-exception v2

    .line 127
    .local v2, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4c
    .catchall {:try_start_44 .. :try_end_4c} :catchall_41

    .line 131
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :goto_4c
    invoke-virtual {p0, v1}, Lcom/android/server/KnoxAIFactoryManagerService;->closeQuietly(Ljava/io/Closeable;)V

    .line 132
    nop

    .line 133
    return v0

    .line 131
    :goto_51
    invoke-virtual {p0, v1}, Lcom/android/server/KnoxAIFactoryManagerService;->closeQuietly(Ljava/io/Closeable;)V

    .line 132
    throw v2
.end method

.method static native trustedapp_factory_process()[B
.end method


# virtual methods
.method public closeQuietly(Ljava/io/Closeable;)V
    .registers 3
    .param p1, "closeable"    # Ljava/io/Closeable;

    .line 138
    if-eqz p1, :cond_8

    .line 139
    :try_start_2
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    goto :goto_8

    .line 141
    :catch_6
    move-exception v0

    goto :goto_9

    .line 143
    :cond_8
    :goto_8
    nop

    .line 144
    :goto_9
    return-void
.end method

.method public declared-synchronized factory_process()[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 98
    :try_start_1
    sget-object v0, Lcom/android/server/KnoxAIFactoryManagerService;->TAG:Ljava/lang/String;

    const-string v1, "factory_process"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    const/4 v0, 0x0

    .line 100
    .local v0, "response":[B
    invoke-static {}, Lcom/android/server/KnoxAIFactoryManagerService;->trustedapp_factory_process()[B

    move-result-object v1
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_10

    move-object v0, v1

    .line 101
    monitor-exit p0

    return-object v0

    .line 97
    .end local v0    # "response":[B
    .end local p0    # "this":Lcom/android/server/KnoxAIFactoryManagerService;
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method
