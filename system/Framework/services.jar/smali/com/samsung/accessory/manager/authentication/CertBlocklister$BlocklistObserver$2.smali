.class Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver$2;
.super Ljava/lang/Thread;
.source "CertBlocklister.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;->writeBlocklist()V
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

    .line 139
    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver$2;->this$0:Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 141
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver$2;->this$0:Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;

    # getter for: Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;->mTmpDir:Ljava/io/File;
    invoke-static {v0}, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;->access$000(Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;)Ljava/io/File;

    move-result-object v0

    monitor-enter v0

    .line 142
    :try_start_7
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver$2;->this$0:Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;

    invoke-virtual {v1}, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 144
    .local v1, "tmpValue":Ljava/lang/String;
    if-eqz v1, :cond_2a

    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver$2;->this$0:Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;

    # getter for: Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;->mBlocklist:Ljava/lang/String;
    invoke-static {v2}, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;->access$200(Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 145
    # getter for: Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;->DBG:Z
    invoke-static {}, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;->access$100()Z

    move-result v2

    if-eqz v2, :cond_28

    const-string v2, "SAccessoryManager_CertBlocklister"

    const-string v3, "Certificate blocklist not changed, return..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :cond_28
    monitor-exit v0

    return-void

    .line 149
    :cond_2a
    if-eqz v1, :cond_a6

    .line 150
    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver$2;->this$0:Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;

    # setter for: Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;->mBlocklist:Ljava/lang/String;
    invoke-static {v2, v1}, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;->access$202(Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;Ljava/lang/String;)Ljava/lang/String;

    .line 151
    # getter for: Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;->DBG:Z
    invoke-static {}, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;->access$100()Z

    move-result v2

    if-eqz v2, :cond_3e

    const-string v2, "SAccessoryManager_CertBlocklister"

    const-string v3, "Certificate blocklist changed, updating..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3e
    .catchall {:try_start_7 .. :try_end_3e} :catchall_a8

    .line 152
    :cond_3e
    const/4 v2, 0x0

    .line 155
    .local v2, "out":Ljava/io/FileOutputStream;
    :try_start_3f
    const-string/jumbo v3, "journal"

    const-string v4, ""

    iget-object v5, p0, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver$2;->this$0:Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;

    # getter for: Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;->mTmpDir:Ljava/io/File;
    invoke-static {v5}, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;->access$000(Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;)Ljava/io/File;

    move-result-object v5

    invoke-static {v3, v4, v5}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v3

    .line 157
    .local v3, "tmp":Ljava/io/File;
    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/io/File;->setReadable(ZZ)Z

    .line 159
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v2, v4

    .line 160
    iget-object v4, p0, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver$2;->this$0:Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;

    # getter for: Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;->mBlocklist:Ljava/lang/String;
    invoke-static {v4}, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;->access$200(Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/FileOutputStream;->write([B)V

    .line 162
    invoke-static {v2}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 164
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver$2;->this$0:Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;

    # getter for: Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;->mPath:Ljava/lang/String;
    invoke-static {v5}, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;->access$300(Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 165
    # getter for: Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;->DBG:Z
    invoke-static {}, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;->access$100()Z

    move-result v4

    if-eqz v4, :cond_8f

    const-string v4, "SAccessoryManager_CertBlocklister"

    const-string v5, "Certificate blocklist updated"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_84
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_84} :catch_87
    .catchall {:try_start_3f .. :try_end_84} :catchall_85

    goto :goto_8f

    .line 169
    .end local v3    # "tmp":Ljava/io/File;
    :catchall_85
    move-exception v3

    goto :goto_a1

    .line 166
    :catch_87
    move-exception v3

    .line 167
    .local v3, "e":Ljava/io/IOException;
    :try_start_88
    const-string v4, "SAccessoryManager_CertBlocklister"

    const-string v5, "Failed to write list"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8f
    .catchall {:try_start_88 .. :try_end_8f} :catchall_85

    .line 169
    .end local v3    # "e":Ljava/io/IOException;
    :cond_8f
    :goto_8f
    :try_start_8f
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 170
    nop

    .line 172
    # getter for: Lcom/samsung/accessory/manager/authentication/CertBlocklister;->mCertBlocklistListener:Lcom/samsung/accessory/manager/authentication/CertBlocklister$CertBlocklistListener;
    invoke-static {}, Lcom/samsung/accessory/manager/authentication/CertBlocklister;->access$400()Lcom/samsung/accessory/manager/authentication/CertBlocklister$CertBlocklistListener;

    move-result-object v3

    if-eqz v3, :cond_a6

    .line 173
    # getter for: Lcom/samsung/accessory/manager/authentication/CertBlocklister;->mCertBlocklistListener:Lcom/samsung/accessory/manager/authentication/CertBlocklister$CertBlocklistListener;
    invoke-static {}, Lcom/samsung/accessory/manager/authentication/CertBlocklister;->access$400()Lcom/samsung/accessory/manager/authentication/CertBlocklister$CertBlocklistListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/samsung/accessory/manager/authentication/CertBlocklister$CertBlocklistListener;->onCertBlocklistChanged()V

    goto :goto_a6

    .line 169
    :goto_a1
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 170
    nop

    .end local p0    # "this":Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver$2;
    throw v3

    .line 175
    .end local v1    # "tmpValue":Ljava/lang/String;
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .restart local p0    # "this":Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver$2;
    :cond_a6
    :goto_a6
    monitor-exit v0

    .line 176
    return-void

    .line 175
    :catchall_a8
    move-exception v1

    monitor-exit v0
    :try_end_aa
    .catchall {:try_start_8f .. :try_end_aa} :catchall_a8

    throw v1
.end method
