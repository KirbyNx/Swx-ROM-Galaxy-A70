.class Lcom/android/server/enterprise/keystore/TimaKeystoreService$3;
.super Ljava/lang/Object;
.source "TimaKeystoreService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/keystore/TimaKeystoreService;->getDKSService(I)Lcom/samsung/android/knox/downloadablekeystore/IDownloadableKeystoreService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/keystore/TimaKeystoreService;

.field final synthetic val$val:I


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/keystore/TimaKeystoreService;I)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/enterprise/keystore/TimaKeystoreService;

    .line 241
    iput-object p1, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService$3;->this$0:Lcom/android/server/enterprise/keystore/TimaKeystoreService;

    iput p2, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService$3;->val$val:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "binder"    # Landroid/os/IBinder;

    monitor-enter p0

    .line 244
    :try_start_1
    # getter for: Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "In DKS onServiceConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    iget-object v0, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService$3;->this$0:Lcom/android/server/enterprise/keystore/TimaKeystoreService;

    invoke-static {p2}, Lcom/samsung/android/knox/downloadablekeystore/IDownloadableKeystoreService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/downloadablekeystore/IDownloadableKeystoreService;

    move-result-object v1

    # setter for: Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mDKSService:Lcom/samsung/android/knox/downloadablekeystore/IDownloadableKeystoreService;
    invoke-static {v0, v1}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->access$202(Lcom/android/server/enterprise/keystore/TimaKeystoreService;Lcom/samsung/android/knox/downloadablekeystore/IDownloadableKeystoreService;)Lcom/samsung/android/knox/downloadablekeystore/IDownloadableKeystoreService;
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_37

    .line 247
    :try_start_13
    iget-object v0, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService$3;->this$0:Lcom/android/server/enterprise/keystore/TimaKeystoreService;

    # getter for: Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mDKSService:Lcom/samsung/android/knox/downloadablekeystore/IDownloadableKeystoreService;
    invoke-static {v0}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->access$200(Lcom/android/server/enterprise/keystore/TimaKeystoreService;)Lcom/samsung/android/knox/downloadablekeystore/IDownloadableKeystoreService;

    move-result-object v0

    if-eqz v0, :cond_34

    .line 248
    iget v0, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService$3;->val$val:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_34

    .line 249
    iget-object v0, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService$3;->this$0:Lcom/android/server/enterprise/keystore/TimaKeystoreService;

    # getter for: Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mDKSService:Lcom/samsung/android/knox/downloadablekeystore/IDownloadableKeystoreService;
    invoke-static {v0}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->access$200(Lcom/android/server/enterprise/keystore/TimaKeystoreService;)Lcom/samsung/android/knox/downloadablekeystore/IDownloadableKeystoreService;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/downloadablekeystore/IDownloadableKeystoreService;->startTimaKeystoreServices(I)I
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_2a} :catch_30
    .catch Ljava/lang/IllegalArgumentException; {:try_start_13 .. :try_end_2a} :catch_2b
    .catchall {:try_start_13 .. :try_end_2a} :catchall_37

    goto :goto_34

    .line 255
    .end local p0    # "this":Lcom/android/server/enterprise/keystore/TimaKeystoreService$3;
    :catch_2b
    move-exception v0

    .line 256
    .local v0, "ee":Ljava/lang/IllegalArgumentException;
    :try_start_2c
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_35

    .line 252
    .end local v0    # "ee":Ljava/lang/IllegalArgumentException;
    :catch_30
    move-exception v0

    .line 254
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_34
    .catchall {:try_start_2c .. :try_end_34} :catchall_37

    .line 257
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_34
    :goto_34
    nop

    .line 258
    :goto_35
    monitor-exit p0

    return-void

    .line 243
    .end local p1    # "className":Landroid/content/ComponentName;
    .end local p2    # "binder":Landroid/os/IBinder;
    :catchall_37
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .param p1, "className"    # Landroid/content/ComponentName;

    .line 261
    # getter for: Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "In DKS onServiceDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    iget-object v0, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService$3;->this$0:Lcom/android/server/enterprise/keystore/TimaKeystoreService;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mDKSService:Lcom/samsung/android/knox/downloadablekeystore/IDownloadableKeystoreService;
    invoke-static {v0, v1}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->access$202(Lcom/android/server/enterprise/keystore/TimaKeystoreService;Lcom/samsung/android/knox/downloadablekeystore/IDownloadableKeystoreService;)Lcom/samsung/android/knox/downloadablekeystore/IDownloadableKeystoreService;

    .line 263
    iget-object v0, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService$3;->this$0:Lcom/android/server/enterprise/keystore/TimaKeystoreService;

    const/4 v1, 0x3

    # invokes: Lcom/android/server/enterprise/keystore/TimaKeystoreService;->scheduleDKSRestart(I)V
    invoke-static {v0, v1}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->access$300(Lcom/android/server/enterprise/keystore/TimaKeystoreService;I)V

    .line 264
    return-void
.end method
