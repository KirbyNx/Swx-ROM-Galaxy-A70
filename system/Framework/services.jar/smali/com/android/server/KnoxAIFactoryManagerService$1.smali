.class Lcom/android/server/KnoxAIFactoryManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "KnoxAIFactoryManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/KnoxAIFactoryManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field key_length_valid:J

.field final synthetic this$0:Lcom/android/server/KnoxAIFactoryManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/KnoxAIFactoryManagerService;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/server/KnoxAIFactoryManagerService;

    .line 51
    iput-object p1, p0, Lcom/android/server/KnoxAIFactoryManagerService$1;->this$0:Lcom/android/server/KnoxAIFactoryManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 52
    const-wide/16 v0, 0x68

    iput-wide v0, p0, Lcom/android/server/KnoxAIFactoryManagerService$1;->key_length_valid:J

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 54
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, "action":Ljava/lang/String;
    sget-object v1, Lcom/android/server/KnoxAIFactoryManagerService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "receive intent action : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.samsung.intent.action.LAZY_BOOT_COMPLETE"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_bc

    .line 58
    sget-object v1, Lcom/android/server/KnoxAIFactoryManagerService;->TAG:Ljava/lang/String;

    const-string v2, "LAZY_BOOT_COMPLETED"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    new-instance v1, Ljava/io/File;

    const-string v2, "/efs/knoxai/"

    const-string/jumbo v3, "priv.dat"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .local v1, "file":Ljava/io/File;
    const-wide/16 v2, 0x0

    .line 62
    .local v2, "length":J
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_54

    .line 63
    sget-object v4, Lcom/android/server/KnoxAIFactoryManagerService;->TAG:Ljava/lang/String;

    const-string v5, "KnoxAI key process - KnoxAI key is not exist"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_75

    .line 65
    const-wide/16 v2, 0x0

    goto :goto_75

    .line 67
    :cond_54
    sget-object v4, Lcom/android/server/KnoxAIFactoryManagerService;->TAG:Ljava/lang/String;

    const-string v5, "KnoxAI key exists"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    .line 69
    sget-object v4, Lcom/android/server/KnoxAIFactoryManagerService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "KnoxAI key length check : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :cond_75
    :goto_75
    iget-wide v4, p0, Lcom/android/server/KnoxAIFactoryManagerService$1;->key_length_valid:J

    cmp-long v4, v2, v4

    if-gez v4, :cond_b5

    .line 73
    sget-object v4, Lcom/android/server/KnoxAIFactoryManagerService;->TAG:Ljava/lang/String;

    const-string v5, "KnoxAI key process - KnoxAI key length is invalid"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    const/4 v4, 0x0

    .line 76
    .local v4, "encryptedKey":[B
    const/4 v5, 0x0

    .line 77
    .local v5, "isSaved":Z
    :try_start_84
    iget-object v6, p0, Lcom/android/server/KnoxAIFactoryManagerService$1;->this$0:Lcom/android/server/KnoxAIFactoryManagerService;

    invoke-virtual {v6}, Lcom/android/server/KnoxAIFactoryManagerService;->factory_process()[B

    move-result-object v6

    move-object v4, v6

    .line 78
    iget-object v6, p0, Lcom/android/server/KnoxAIFactoryManagerService$1;->this$0:Lcom/android/server/KnoxAIFactoryManagerService;

    # invokes: Lcom/android/server/KnoxAIFactoryManagerService;->saveKey([B)Z
    invoke-static {v6, v4}, Lcom/android/server/KnoxAIFactoryManagerService;->access$000(Lcom/android/server/KnoxAIFactoryManagerService;[B)Z

    move-result v6

    move v5, v6

    .line 79
    const/4 v6, 0x1

    if-ne v5, v6, :cond_a1

    .line 80
    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Ljava/io/File;->setReadable(ZZ)Z

    .line 81
    sget-object v6, Lcom/android/server/KnoxAIFactoryManagerService;->TAG:Ljava/lang/String;

    const-string v7, "KnoxAI key process is done successfully"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b4

    .line 83
    :cond_a1
    sget-object v6, Lcom/android/server/KnoxAIFactoryManagerService;->TAG:Ljava/lang/String;

    const-string v7, "Failed to run factory_process"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a8
    .catch Landroid/os/RemoteException; {:try_start_84 .. :try_end_a8} :catch_a9

    goto :goto_b4

    .line 85
    .end local v4    # "encryptedKey":[B
    .end local v5    # "isSaved":Z
    :catch_a9
    move-exception v4

    .line 86
    .local v4, "e":Landroid/os/RemoteException;
    sget-object v5, Lcom/android/server/KnoxAIFactoryManagerService;->TAG:Ljava/lang/String;

    const-string v6, "factory_process failed"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    .line 88
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_b4
    goto :goto_bc

    .line 90
    :cond_b5
    sget-object v4, Lcom/android/server/KnoxAIFactoryManagerService;->TAG:Ljava/lang/String;

    const-string v5, "KnoxAI key has been already generated"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "length":J
    :cond_bc
    :goto_bc
    return-void
.end method
