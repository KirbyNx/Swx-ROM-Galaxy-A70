.class Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver$1;
.super Ljava/lang/Thread;
.source "CertBlocklister.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;->readFile()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;


# direct methods
.method constructor <init>(Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"    # Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;
    .param p2, "name"    # Ljava/lang/String;

    .line 110
    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver$1;->this$0:Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 112
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver$1;->this$0:Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;

    # getter for: Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;->mTmpDir:Ljava/io/File;
    invoke-static {v0}, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;->access$000(Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;)Ljava/io/File;

    move-result-object v0

    monitor-enter v0

    .line 113
    :try_start_7
    # getter for: Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;->DBG:Z
    invoke-static {}, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;->access$100()Z

    move-result v1

    if-eqz v1, :cond_14

    const-string v1, "SAccessoryManager_CertBlocklister"

    const-string v2, "Read a blocklist from file.."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_57

    .line 115
    :cond_14
    :try_start_14
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver$1;->this$0:Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;

    sget-object v2, Lcom/samsung/accessory/manager/authentication/CertBlocklister;->PUBKEY_PATH:Ljava/lang/String;

    invoke-static {v2}, Llibcore/io/IoUtils;->readFileAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    # setter for: Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;->mBlocklist:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;->access$202(Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1f
    .catch Ljava/io/FileNotFoundException; {:try_start_14 .. :try_end_1f} :catch_29
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_1f} :catch_20
    .catchall {:try_start_14 .. :try_end_1f} :catchall_57

    .line 120
    goto :goto_32

    .line 118
    :catch_20
    move-exception v1

    .line 119
    .local v1, "e":Ljava/io/IOException;
    :try_start_21
    const-string v2, "SAccessoryManager_CertBlocklister"

    const-string v3, "Failed to read list"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_32

    .line 116
    .end local v1    # "e":Ljava/io/IOException;
    :catch_29
    move-exception v1

    .line 117
    .local v1, "e":Ljava/io/FileNotFoundException;
    const-string v2, "SAccessoryManager_CertBlocklister"

    const-string v3, "File does not exist"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    nop

    .line 122
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :goto_32
    # getter for: Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;->DBG:Z
    invoke-static {}, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;->access$100()Z

    move-result v1

    if-eqz v1, :cond_55

    const-string v1, "SAccessoryManager_CertBlocklister"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mBlocklist = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver$1;->this$0:Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;

    # getter for: Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;->mBlocklist:Ljava/lang/String;
    invoke-static {v3}, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;->access$200(Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :cond_55
    monitor-exit v0

    .line 124
    return-void

    .line 123
    :catchall_57
    move-exception v1

    monitor-exit v0
    :try_end_59
    .catchall {:try_start_21 .. :try_end_59} :catchall_57

    throw v1
.end method
