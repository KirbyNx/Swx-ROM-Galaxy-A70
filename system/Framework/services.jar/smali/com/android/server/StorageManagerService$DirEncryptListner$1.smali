.class Lcom/android/server/StorageManagerService$DirEncryptListner$1;
.super Landroid/os/IVoldMountCallback$Stub;
.source "StorageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/StorageManagerService$DirEncryptListner;->onEncryptionStatusChanged(Ljava/lang/String;ILjava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/StorageManagerService$DirEncryptListner;

.field final synthetic val$vol:Landroid/os/storage/VolumeInfo;


# direct methods
.method constructor <init>(Lcom/android/server/StorageManagerService$DirEncryptListner;Landroid/os/storage/VolumeInfo;)V
    .registers 3
    .param p1, "this$1"    # Lcom/android/server/StorageManagerService$DirEncryptListner;

    .line 5582
    iput-object p1, p0, Lcom/android/server/StorageManagerService$DirEncryptListner$1;->this$1:Lcom/android/server/StorageManagerService$DirEncryptListner;

    iput-object p2, p0, Lcom/android/server/StorageManagerService$DirEncryptListner$1;->val$vol:Landroid/os/storage/VolumeInfo;

    invoke-direct {p0}, Landroid/os/IVoldMountCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onVolumeChecking(Ljava/io/FileDescriptor;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 14
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "internalPath"    # Ljava/lang/String;

    .line 5586
    const-string v0, "Failed to close FUSE device fd"

    const-string v1, "StorageManagerService"

    iget-object v2, p0, Lcom/android/server/StorageManagerService$DirEncryptListner$1;->val$vol:Landroid/os/storage/VolumeInfo;

    iput-object p2, v2, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    .line 5587
    iget-object v2, p0, Lcom/android/server/StorageManagerService$DirEncryptListner$1;->val$vol:Landroid/os/storage/VolumeInfo;

    iput-object p3, v2, Landroid/os/storage/VolumeInfo;->internalPath:Ljava/lang/String;

    .line 5588
    new-instance v2, Landroid/os/ParcelFileDescriptor;

    invoke-direct {v2, p1}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;)V

    .line 5590
    .local v2, "pfd":Landroid/os/ParcelFileDescriptor;
    :try_start_11
    iget-object v3, p0, Lcom/android/server/StorageManagerService$DirEncryptListner$1;->this$1:Lcom/android/server/StorageManagerService$DirEncryptListner;

    iget-object v3, v3, Lcom/android/server/StorageManagerService$DirEncryptListner;->this$0:Lcom/android/server/StorageManagerService;

    # getter for: Lcom/android/server/StorageManagerService;->mStorageSessionController:Lcom/android/server/storage/StorageSessionController;
    invoke-static {v3}, Lcom/android/server/StorageManagerService;->access$3900(Lcom/android/server/StorageManagerService;)Lcom/android/server/storage/StorageSessionController;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/StorageManagerService$DirEncryptListner$1;->val$vol:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v3, v2, v4}, Lcom/android/server/storage/StorageSessionController;->onVolumeMount(Landroid/os/ParcelFileDescriptor;Landroid/os/storage/VolumeInfo;)V
    :try_end_1e
    .catch Lcom/android/server/storage/StorageSessionController$ExternalStorageServiceException; {:try_start_11 .. :try_end_1e} :catch_2a
    .catchall {:try_start_11 .. :try_end_1e} :catchall_28

    .line 5591
    const/4 v3, 0x1

    .line 5603
    :try_start_1f
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_22} :catch_23

    .line 5606
    goto :goto_27

    .line 5604
    :catch_23
    move-exception v4

    .line 5605
    .local v4, "e":Ljava/lang/Exception;
    invoke-static {v1, v0, v4}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5591
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_27
    return v3

    .line 5602
    :catchall_28
    move-exception v3

    goto :goto_92

    .line 5592
    :catch_2a
    move-exception v3

    .line 5593
    .local v3, "e":Lcom/android/server/storage/StorageSessionController$ExternalStorageServiceException;
    :try_start_2b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to mount volume "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/StorageManagerService$DirEncryptListner$1;->val$vol:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v3}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5595
    const/16 v4, 0xa

    .line 5596
    .local v4, "nextResetSeconds":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Scheduling reset in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "s"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5597
    iget-object v5, p0, Lcom/android/server/StorageManagerService$DirEncryptListner$1;->this$1:Lcom/android/server/StorageManagerService$DirEncryptListner;

    iget-object v5, v5, Lcom/android/server/StorageManagerService$DirEncryptListner;->this$0:Lcom/android/server/StorageManagerService;

    # getter for: Lcom/android/server/StorageManagerService;->mHandler:Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;
    invoke-static {v5}, Lcom/android/server/StorageManagerService;->access$2800(Lcom/android/server/StorageManagerService;)Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;

    move-result-object v5

    const/16 v6, 0xa

    invoke-virtual {v5, v6}, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->removeMessages(I)V

    .line 5598
    iget-object v5, p0, Lcom/android/server/StorageManagerService$DirEncryptListner$1;->this$1:Lcom/android/server/StorageManagerService$DirEncryptListner;

    iget-object v5, v5, Lcom/android/server/StorageManagerService$DirEncryptListner;->this$0:Lcom/android/server/StorageManagerService;

    # getter for: Lcom/android/server/StorageManagerService;->mHandler:Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;
    invoke-static {v5}, Lcom/android/server/StorageManagerService;->access$2800(Lcom/android/server/StorageManagerService;)Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;

    move-result-object v5

    iget-object v7, p0, Lcom/android/server/StorageManagerService$DirEncryptListner$1;->this$1:Lcom/android/server/StorageManagerService$DirEncryptListner;

    iget-object v7, v7, Lcom/android/server/StorageManagerService$DirEncryptListner;->this$0:Lcom/android/server/StorageManagerService;

    # getter for: Lcom/android/server/StorageManagerService;->mHandler:Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;
    invoke-static {v7}, Lcom/android/server/StorageManagerService;->access$2800(Lcom/android/server/StorageManagerService;)Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v8, v4

    .line 5599
    invoke-virtual {v7, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v7

    .line 5598
    invoke-virtual {v5, v6, v7, v8}, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_88
    .catchall {:try_start_2b .. :try_end_88} :catchall_28

    .line 5600
    const/4 v5, 0x0

    .line 5603
    :try_start_89
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_89 .. :try_end_8c} :catch_8d

    .line 5606
    goto :goto_91

    .line 5604
    :catch_8d
    move-exception v6

    .line 5605
    .local v6, "e":Ljava/lang/Exception;
    invoke-static {v1, v0, v6}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5600
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_91
    return v5

    .line 5603
    .end local v3    # "e":Lcom/android/server/storage/StorageSessionController$ExternalStorageServiceException;
    .end local v4    # "nextResetSeconds":I
    :goto_92
    :try_start_92
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_95
    .catch Ljava/lang/Exception; {:try_start_92 .. :try_end_95} :catch_96

    .line 5606
    goto :goto_9a

    .line 5604
    :catch_96
    move-exception v4

    .line 5605
    .local v4, "e":Ljava/lang/Exception;
    invoke-static {v1, v0, v4}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5607
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_9a
    throw v3
.end method
