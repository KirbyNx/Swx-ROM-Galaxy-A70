.class Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;
.super Landroid/os/Handler;
.source "StorageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/StorageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StorageManagerServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/StorageManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/StorageManagerService;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/StorageManagerService;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 862
    iput-object p1, p0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    .line 863
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 864
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .param p1, "msg"    # Landroid/os/Message;

    .line 875
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x1e

    const/4 v2, 0x0

    const-string v3, "StorageManagerService"

    if-eq v0, v1, :cond_24a

    const/16 v1, 0x1f

    if-eq v0, v1, :cond_230

    const/4 v1, -0x1

    packed-switch v0, :pswitch_data_27c

    goto/16 :goto_27b

    .line 1012
    :pswitch_13
    const-string/jumbo v0, "handleMessage -> H_VOLUME_STATE_CHANGED"

    invoke-static {v3, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1013
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 1014
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v1, p0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Landroid/os/storage/VolumeInfo;

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    .line 1015
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1014
    # invokes: Lcom/android/server/StorageManagerService;->onVolumeStateChangedAsync(Landroid/os/storage/VolumeInfo;II)V
    invoke-static {v1, v2, v3, v4}, Lcom/android/server/StorageManagerService;->access$2600(Lcom/android/server/StorageManagerService;Landroid/os/storage/VolumeInfo;II)V

    .line 1016
    goto/16 :goto_27b

    .line 1007
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_38
    const-string/jumbo v0, "handleMessage -> H_COMPLETE_UNLOCK_USER"

    invoke-static {v3, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1008
    iget-object v0, p0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    # invokes: Lcom/android/server/StorageManagerService;->completeUnlockUser(I)V
    invoke-static {v0, v1}, Lcom/android/server/StorageManagerService;->access$2500(Lcom/android/server/StorageManagerService;I)V

    .line 1009
    goto/16 :goto_27b

    .line 882
    :pswitch_4d
    const-string/jumbo v0, "handleMessage -> H_BOOT_COMPLETED"

    invoke-static {v3, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    iget-object v0, p0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    # invokes: Lcom/android/server/StorageManagerService;->handleBootCompleted()V
    invoke-static {v0}, Lcom/android/server/StorageManagerService;->access$1400(Lcom/android/server/StorageManagerService;)V

    .line 884
    goto/16 :goto_27b

    .line 1001
    :pswitch_5a
    const-string/jumbo v0, "handleMessage -> H_ABORT_IDLE_MAINT"

    invoke-static {v3, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    const-string v0, "Aborting idle maintenance"

    invoke-static {v3, v0}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1003
    iget-object v0, p0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/StorageManagerService;->abortIdleMaint(Ljava/lang/Runnable;)V

    .line 1004
    goto/16 :goto_27b

    .line 995
    :pswitch_70
    const-string/jumbo v0, "handleMessage -> H_RUN_IDLE_MAINT"

    invoke-static {v3, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    const-string v0, "Running idle maintenance"

    invoke-static {v3, v0}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    iget-object v0, p0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/StorageManagerService;->runIdleMaint(Ljava/lang/Runnable;)V

    .line 998
    goto/16 :goto_27b

    .line 990
    :pswitch_86
    const-string/jumbo v0, "handleMessage -> H_RESET"

    invoke-static {v3, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 991
    iget-object v0, p0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    # invokes: Lcom/android/server/StorageManagerService;->resetIfBootedAndConnected()V
    invoke-static {v0}, Lcom/android/server/StorageManagerService;->access$2400(Lcom/android/server/StorageManagerService;)V

    .line 992
    goto/16 :goto_27b

    .line 983
    :pswitch_93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "handleMessage -> H_PARTITION_FORGET rec="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/storage/VolumeRecord;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/storage/VolumeRecord;

    .line 986
    .local v0, "rec":Landroid/os/storage/VolumeRecord;
    iget-object v1, p0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    iget-object v2, v0, Landroid/os/storage/VolumeRecord;->partGuid:Ljava/lang/String;

    iget-object v3, v0, Landroid/os/storage/VolumeRecord;->fsUuid:Ljava/lang/String;

    # invokes: Lcom/android/server/StorageManagerService;->forgetPartition(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2, v3}, Lcom/android/server/StorageManagerService;->access$2300(Lcom/android/server/StorageManagerService;Ljava/lang/String;Ljava/lang/String;)V

    .line 987
    goto/16 :goto_27b

    .line 944
    .end local v0    # "rec":Landroid/os/storage/VolumeRecord;
    :pswitch_bb
    const-string/jumbo v0, "handleMessage -> H_VOLUME_UNMOUNT"

    invoke-static {v3, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/storage/VolumeInfo;

    .line 946
    .local v0, "vol":Landroid/os/storage/VolumeInfo;
    iget-object v1, p0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    # invokes: Lcom/android/server/StorageManagerService;->unmount(Landroid/os/storage/VolumeInfo;)V
    invoke-static {v1, v0}, Lcom/android/server/StorageManagerService;->access$2100(Lcom/android/server/StorageManagerService;Landroid/os/storage/VolumeInfo;)V

    .line 947
    goto/16 :goto_27b

    .line 968
    .end local v0    # "vol":Landroid/os/storage/VolumeInfo;
    :pswitch_cc
    const-string/jumbo v0, "handleMessage -> H_INTERNAL_BROADCAST"

    invoke-static {v3, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    .line 973
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "android.os.storage.extra.VOLUME_STATE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 974
    .local v1, "state":I
    const-string v2, "android.os.storage.extra.FS_UUID"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 975
    .local v2, "uuid":Ljava/lang/String;
    if-nez v2, :cond_e6

    const-string v2, ""

    .line 976
    :cond_e6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "broadcasting ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ") state="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " uuid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    iget-object v3, p0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    # getter for: Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/StorageManagerService;->access$2200(Lcom/android/server/StorageManagerService;)Landroid/content/Context;

    move-result-object v3

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v5, "android.permission.WRITE_MEDIA_STORAGE"

    invoke-virtual {v3, v0, v4, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 980
    goto/16 :goto_27b

    .line 950
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "state":I
    .end local v2    # "uuid":Ljava/lang/String;
    :pswitch_119
    const-string/jumbo v0, "handleMessage -> H_VOLUME_BROADCAST"

    invoke-static {v3, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/storage/StorageVolume;

    .line 952
    .local v0, "userVol":Landroid/os/storage/StorageVolume;
    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->getState()Ljava/lang/String;

    move-result-object v1

    .line 953
    .local v1, "envState":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Volume "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " broadcasting "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " to "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 954
    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->getOwner()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 953
    invoke-static {v3, v2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    invoke-static {v1}, Landroid/os/storage/VolumeInfo;->getBroadcastForEnvironment(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 957
    .local v2, "action":Ljava/lang/String;
    if-eqz v2, :cond_27b

    .line 958
    new-instance v3, Landroid/content/Intent;

    .line 959
    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->getPathFile()Ljava/io/File;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 960
    .local v3, "intent":Landroid/content/Intent;
    const-string v4, "android.os.storage.extra.STORAGE_VOLUME"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 961
    const/high16 v4, 0x5000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 963
    iget-object v4, p0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    # getter for: Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/StorageManagerService;->access$2200(Lcom/android/server/StorageManagerService;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->getOwner()Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 964
    .end local v3    # "intent":Landroid/content/Intent;
    goto/16 :goto_27b

    .line 933
    .end local v0    # "userVol":Landroid/os/storage/StorageVolume;
    .end local v1    # "envState":Ljava/lang/String;
    .end local v2    # "action":Ljava/lang/String;
    :pswitch_17f
    const-string/jumbo v0, "handleMessage -> H_VOLUME_MOUNT"

    invoke-static {v3, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/storage/VolumeInfo;

    .line 935
    .local v0, "vol":Landroid/os/storage/VolumeInfo;
    iget-object v1, p0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    # invokes: Lcom/android/server/StorageManagerService;->isMountDisallowed(Landroid/os/storage/VolumeInfo;)Z
    invoke-static {v1, v0}, Lcom/android/server/StorageManagerService;->access$1900(Lcom/android/server/StorageManagerService;Landroid/os/storage/VolumeInfo;)Z

    move-result v1

    if-eqz v1, :cond_1b0

    .line 936
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring mount "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " due to policy"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 937
    goto/16 :goto_27b

    .line 940
    :cond_1b0
    iget-object v1, p0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    # invokes: Lcom/android/server/StorageManagerService;->mount(Landroid/os/storage/VolumeInfo;)V
    invoke-static {v1, v0}, Lcom/android/server/StorageManagerService;->access$2000(Lcom/android/server/StorageManagerService;Landroid/os/storage/VolumeInfo;)V

    .line 941
    goto/16 :goto_27b

    .line 892
    .end local v0    # "vol":Landroid/os/storage/VolumeInfo;
    :pswitch_1b7
    const-string/jumbo v0, "handleMessage -> H_FSTRIM"

    invoke-static {v3, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    const-string v0, "Running fstrim idle maintenance"

    invoke-static {v3, v0}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    :try_start_1c2
    iget-object v0, p0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    # setter for: Lcom/android/server/StorageManagerService;->mLastMaintenance:J
    invoke-static {v0, v4, v5}, Lcom/android/server/StorageManagerService;->access$1602(Lcom/android/server/StorageManagerService;J)J

    .line 898
    iget-object v0, p0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    # getter for: Lcom/android/server/StorageManagerService;->mLastMaintenanceFile:Ljava/io/File;
    invoke-static {v0}, Lcom/android/server/StorageManagerService;->access$1700(Lcom/android/server/StorageManagerService;)Ljava/io/File;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    # getter for: Lcom/android/server/StorageManagerService;->mLastMaintenance:J
    invoke-static {v1}, Lcom/android/server/StorageManagerService;->access$1600(Lcom/android/server/StorageManagerService;)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/io/File;->setLastModified(J)Z
    :try_end_1da
    .catch Ljava/lang/Exception; {:try_start_1c2 .. :try_end_1da} :catch_1db

    .line 901
    goto :goto_1e1

    .line 899
    :catch_1db
    move-exception v0

    .line 900
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Unable to record last fstrim!"

    invoke-static {v3, v1}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1e1
    iget-object v0, p0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/server/StorageManagerService;->fstrim(ILandroid/os/IVoldTaskListener;)V

    .line 908
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    .line 909
    .local v0, "callback":Ljava/lang/Runnable;
    if-eqz v0, :cond_27b

    .line 910
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_27b

    .line 915
    .end local v0    # "callback":Ljava/lang/Runnable;
    :pswitch_1f2
    const-string/jumbo v0, "handleMessage -> H_SHUTDOWN"

    invoke-static {v3, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/storage/IStorageShutdownObserver;

    .line 917
    .local v0, "obs":Landroid/os/storage/IStorageShutdownObserver;
    const/4 v4, 0x0

    .line 919
    .local v4, "success":Z
    :try_start_1fd
    iget-object v5, p0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    # getter for: Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;
    invoke-static {v5}, Lcom/android/server/StorageManagerService;->access$1800(Lcom/android/server/StorageManagerService;)Landroid/os/IVold;

    move-result-object v5

    invoke-interface {v5}, Landroid/os/IVold;->shutdown()V
    :try_end_206
    .catch Ljava/lang/Exception; {:try_start_1fd .. :try_end_206} :catch_208

    .line 920
    const/4 v4, 0x1

    .line 923
    goto :goto_20c

    .line 921
    :catch_208
    move-exception v5

    .line 922
    .local v5, "e":Ljava/lang/Exception;
    invoke-static {v3, v5}, Landroid/util/sysfwutil/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 924
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_20c
    if-eqz v0, :cond_27b

    .line 926
    if-eqz v4, :cond_211

    goto :goto_212

    :cond_211
    move v2, v1

    :goto_212
    :try_start_212
    invoke-interface {v0, v2}, Landroid/os/storage/IStorageShutdownObserver;->onShutDownComplete(I)V
    :try_end_215
    .catch Ljava/lang/Exception; {:try_start_212 .. :try_end_215} :catch_216

    .line 928
    :goto_215
    goto :goto_27b

    .line 927
    :catch_216
    move-exception v1

    goto :goto_215

    .line 887
    .end local v0    # "obs":Landroid/os/storage/IStorageShutdownObserver;
    .end local v4    # "success":Z
    :pswitch_218
    const-string/jumbo v0, "handleMessage -> H_DAEMON_CONNECTED"

    invoke-static {v3, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    iget-object v0, p0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    # invokes: Lcom/android/server/StorageManagerService;->handleDaemonConnected()V
    invoke-static {v0}, Lcom/android/server/StorageManagerService;->access$1500(Lcom/android/server/StorageManagerService;)V

    .line 889
    goto :goto_27b

    .line 877
    :pswitch_224
    const-string/jumbo v0, "handleMessage -> H_SYSTEM_READY"

    invoke-static {v3, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    iget-object v0, p0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    # invokes: Lcom/android/server/StorageManagerService;->handleSystemReady()V
    invoke-static {v0}, Lcom/android/server/StorageManagerService;->access$1300(Lcom/android/server/StorageManagerService;)V

    .line 879
    goto :goto_27b

    .line 1030
    :cond_230
    const-string/jumbo v0, "handleMessage -> H_IDLE_DEFRAG"

    invoke-static {v3, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1032
    :try_start_236
    iget-object v0, p0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    # getter for: Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;
    invoke-static {v0}, Lcom/android/server/StorageManagerService;->access$1800(Lcom/android/server/StorageManagerService;)Landroid/os/IVold;

    move-result-object v0

    new-instance v1, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler$1;

    invoke-direct {v1, p0}, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler$1;-><init>(Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;)V

    invoke-interface {v0, v1}, Landroid/os/IVold;->runIdleDefrag(Landroid/os/IVoldTaskListener;)V
    :try_end_244
    .catch Ljava/lang/Exception; {:try_start_236 .. :try_end_244} :catch_245

    .line 1044
    goto :goto_27b

    .line 1042
    :catch_245
    move-exception v0

    .line 1043
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v3, v0}, Landroid/util/sysfwutil/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_27b

    .line 1020
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_24a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "handleMessage -> H_KEYGUARD_CHANGED isShowing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->arg1:I

    const/4 v4, 0x1

    if-ne v1, v4, :cond_25c

    move v1, v4

    goto :goto_25d

    :cond_25c
    move v1, v2

    :goto_25d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1023
    :try_start_267
    iget-object v0, p0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    # getter for: Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;
    invoke-static {v0}, Lcom/android/server/StorageManagerService;->access$1800(Lcom/android/server/StorageManagerService;)Landroid/os/IVold;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v4, :cond_272

    move v2, v4

    :cond_272
    invoke-interface {v0, v2}, Landroid/os/IVold;->onSecureKeyguardStateChanged(Z)V
    :try_end_275
    .catch Ljava/lang/Exception; {:try_start_267 .. :try_end_275} :catch_276

    .line 1026
    goto :goto_27b

    .line 1024
    :catch_276
    move-exception v0

    .line 1025
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {v3, v0}, Landroid/util/sysfwutil/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1027
    .end local v0    # "e":Ljava/lang/Exception;
    nop

    .line 1049
    :cond_27b
    :goto_27b
    return-void

    :pswitch_data_27c
    .packed-switch 0x1
        :pswitch_224
        :pswitch_218
        :pswitch_1f2
        :pswitch_1b7
        :pswitch_17f
        :pswitch_119
        :pswitch_cc
        :pswitch_bb
        :pswitch_93
        :pswitch_86
        :pswitch_70
        :pswitch_5a
        :pswitch_4d
        :pswitch_38
        :pswitch_13
    .end packed-switch
.end method

.method public sendMessageWithBoolean(IZ)V
    .registers 4
    .param p1, "what"    # I
    .param p2, "arg"    # Z

    .line 867
    invoke-virtual {p0, p1}, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->removeMessages(I)V

    .line 868
    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 869
    .local v0, "m":Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 870
    invoke-virtual {p0, v0}, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 871
    return-void
.end method
