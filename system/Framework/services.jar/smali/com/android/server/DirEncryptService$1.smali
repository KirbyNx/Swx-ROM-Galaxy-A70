.class Lcom/android/server/DirEncryptService$1;
.super Landroid/os/IVoldTaskListener$Stub;
.source "DirEncryptService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DirEncryptService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DirEncryptService;


# direct methods
.method constructor <init>(Lcom/android/server/DirEncryptService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/DirEncryptService;

    .line 131
    iput-object p1, p0, Lcom/android/server/DirEncryptService$1;->this$0:Lcom/android/server/DirEncryptService;

    invoke-direct {p0}, Landroid/os/IVoldTaskListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished(ILandroid/os/PersistableBundle;)V
    .registers 5
    .param p1, "status"    # I
    .param p2, "extras"    # Landroid/os/PersistableBundle;

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onFinished ::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DirEncryptService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    return-void
.end method

.method public onStatus(ILandroid/os/PersistableBundle;)V
    .registers 21
    .param p1, "resp_code"    # I
    .param p2, "extras"    # Landroid/os/PersistableBundle;

    .line 137
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    const/16 v3, 0x2ae

    if-ne v1, v3, :cond_19

    .line 138
    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    const-string v8, "DirEncryptService"

    const-string v9, "Encrypting storage card failed"

    invoke-static/range {v4 .. v9}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    goto :goto_62

    .line 140
    :cond_19
    const/16 v3, 0x2ab

    if-ne v1, v3, :cond_62

    .line 141
    const-string v3, "description"

    invoke-virtual {v2, v3}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 142
    .local v3, "description":Ljava/lang/String;
    const-string/jumbo v4, "status"

    invoke-virtual {v2, v4}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 144
    .local v4, "status":I
    const-string/jumbo v5, "success"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_54

    .line 145
    const/4 v5, 0x1

    if-ne v4, v5, :cond_45

    .line 146
    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v9

    const-string v10, "DirEncryptService"

    const-string v11, "Encrypting storage card succeeded"

    invoke-static/range {v6 .. v11}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    goto :goto_62

    .line 149
    :cond_45
    const/4 v12, 0x1

    const/4 v13, 0x1

    const/4 v14, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v15

    const-string v16, "DirEncryptService"

    const-string v17, "Decrypting storage card succeeded"

    invoke-static/range {v12 .. v17}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    goto :goto_62

    .line 153
    :cond_54
    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v8

    const-string v9, "DirEncryptService"

    const-string v10, "Encrypting storage card failed"

    invoke-static/range {v5 .. v10}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    .line 159
    .end local v3    # "description":Ljava/lang/String;
    .end local v4    # "status":I
    :cond_62
    :goto_62
    iget-object v3, v0, Lcom/android/server/DirEncryptService$1;->this$0:Lcom/android/server/DirEncryptService;

    # getter for: Lcom/android/server/DirEncryptService;->mHandler:Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;
    invoke-static {v3}, Lcom/android/server/DirEncryptService;->access$100(Lcom/android/server/DirEncryptService;)Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;

    move-result-object v3

    if-eqz v3, :cond_79

    .line 160
    iget-object v3, v0, Lcom/android/server/DirEncryptService$1;->this$0:Lcom/android/server/DirEncryptService;

    # getter for: Lcom/android/server/DirEncryptService;->mHandler:Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;
    invoke-static {v3}, Lcom/android/server/DirEncryptService;->access$100(Lcom/android/server/DirEncryptService;)Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;

    move-result-object v3

    new-instance v4, Lcom/android/server/DirEncryptService$1$1;

    invoke-direct {v4, v0, v1, v2}, Lcom/android/server/DirEncryptService$1$1;-><init>(Lcom/android/server/DirEncryptService$1;ILandroid/os/PersistableBundle;)V

    invoke-virtual {v3, v4}, Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_81

    .line 166
    :cond_79
    const-string v3, "DirEncryptService"

    const-string/jumbo v4, "onStatus mHandler == null"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :goto_81
    return-void
.end method
