.class Lcom/android/server/pm/PackageInstallerSession$6;
.super Landroid/content/pm/IDataLoaderStatusListener$Stub;
.source "PackageInstallerSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageInstallerSession;->prepareDataLoaderLocked()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageInstallerSession;

.field final synthetic val$addedFiles:Ljava/util/List;

.field final synthetic val$dataLoaderManager:Landroid/content/pm/DataLoaderManager;

.field final synthetic val$manualStartAndDestroy:Z

.field final synthetic val$params:Landroid/content/pm/DataLoaderParams;

.field final synthetic val$removedFiles:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageInstallerSession;Landroid/content/pm/DataLoaderManager;ZLjava/util/List;Landroid/content/pm/DataLoaderParams;Ljava/util/List;)V
    .registers 7
    .param p1, "this$0"    # Lcom/android/server/pm/PackageInstallerSession;

    .line 3071
    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerSession$6;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    iput-object p2, p0, Lcom/android/server/pm/PackageInstallerSession$6;->val$dataLoaderManager:Landroid/content/pm/DataLoaderManager;

    iput-boolean p3, p0, Lcom/android/server/pm/PackageInstallerSession$6;->val$manualStartAndDestroy:Z

    iput-object p4, p0, Lcom/android/server/pm/PackageInstallerSession$6;->val$addedFiles:Ljava/util/List;

    iput-object p5, p0, Lcom/android/server/pm/PackageInstallerSession$6;->val$params:Landroid/content/pm/DataLoaderParams;

    iput-object p6, p0, Lcom/android/server/pm/PackageInstallerSession$6;->val$removedFiles:Ljava/util/List;

    invoke-direct {p0}, Landroid/content/pm/IDataLoaderStatusListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onStatusChanged(II)V
    .registers 8
    .param p1, "dataLoaderId"    # I
    .param p2, "status"    # I

    .line 3074
    if-eqz p2, :cond_f8

    const/4 v0, 0x4

    if-eq p2, v0, :cond_f8

    const/16 v0, 0x9

    if-eq p2, v0, :cond_f2

    .line 3083
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession$6;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    # getter for: Lcom/android/server/pm/PackageInstallerSession;->mDestroyed:Z
    invoke-static {v0}, Lcom/android/server/pm/PackageInstallerSession;->access$1000(Lcom/android/server/pm/PackageInstallerSession;)Z

    move-result v0

    if-nez v0, :cond_e7

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession$6;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    # getter for: Lcom/android/server/pm/PackageInstallerSession;->mDataLoaderFinished:Z
    invoke-static {v0}, Lcom/android/server/pm/PackageInstallerSession;->access$1400(Lcom/android/server/pm/PackageInstallerSession;)Z

    move-result v0

    if-eqz v0, :cond_1b

    goto/16 :goto_e7

    .line 3093
    :cond_1b
    :try_start_1b
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession$6;->val$dataLoaderManager:Landroid/content/pm/DataLoaderManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/DataLoaderManager;->getDataLoader(I)Landroid/content/pm/IDataLoader;

    move-result-object v0

    .line 3094
    .local v0, "dataLoader":Landroid/content/pm/IDataLoader;
    const/16 v1, -0x14

    const/4 v2, 0x1

    if-nez v0, :cond_33

    .line 3095
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession$6;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    # setter for: Lcom/android/server/pm/PackageInstallerSession;->mDataLoaderFinished:Z
    invoke-static {v3, v2}, Lcom/android/server/pm/PackageInstallerSession;->access$1402(Lcom/android/server/pm/PackageInstallerSession;Z)Z

    .line 3096
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession$6;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    const-string v3, "Failure to obtain data loader"

    # invokes: Lcom/android/server/pm/PackageInstallerSession;->dispatchSessionVerificationFailure(ILjava/lang/String;)V
    invoke-static {v2, v1, v3}, Lcom/android/server/pm/PackageInstallerSession;->access$1600(Lcom/android/server/pm/PackageInstallerSession;ILjava/lang/String;)V

    .line 3098
    return-void

    .line 3101
    :cond_33
    packed-switch p2, :pswitch_data_fa

    :pswitch_36
    goto/16 :goto_db

    .line 3155
    :pswitch_38
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession$6;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    # setter for: Lcom/android/server/pm/PackageInstallerSession;->mDataLoaderFinished:Z
    invoke-static {v3, v2}, Lcom/android/server/pm/PackageInstallerSession;->access$1402(Lcom/android/server/pm/PackageInstallerSession;Z)Z

    .line 3156
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession$6;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    const-string v3, "DataLoader reported unrecoverable failure."

    # invokes: Lcom/android/server/pm/PackageInstallerSession;->dispatchSessionVerificationFailure(ILjava/lang/String;)V
    invoke-static {v2, v1, v3}, Lcom/android/server/pm/PackageInstallerSession;->access$1600(Lcom/android/server/pm/PackageInstallerSession;ILjava/lang/String;)V

    goto/16 :goto_db

    .line 3151
    :pswitch_46
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession$6;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    const-string v2, "DataLoader unavailable"

    # invokes: Lcom/android/server/pm/PackageInstallerSession;->sendPendingStreaming(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/server/pm/PackageInstallerSession;->access$2000(Lcom/android/server/pm/PackageInstallerSession;Ljava/lang/String;)V

    .line 3152
    goto/16 :goto_db

    .line 3141
    :pswitch_4f
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession$6;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    # setter for: Lcom/android/server/pm/PackageInstallerSession;->mDataLoaderFinished:Z
    invoke-static {v3, v2}, Lcom/android/server/pm/PackageInstallerSession;->access$1402(Lcom/android/server/pm/PackageInstallerSession;Z)Z

    .line 3142
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession$6;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    const-string v3, "Failed to prepare image."

    # invokes: Lcom/android/server/pm/PackageInstallerSession;->dispatchSessionVerificationFailure(ILjava/lang/String;)V
    invoke-static {v2, v1, v3}, Lcom/android/server/pm/PackageInstallerSession;->access$1600(Lcom/android/server/pm/PackageInstallerSession;ILjava/lang/String;)V

    .line 3144
    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession$6;->val$manualStartAndDestroy:Z

    if-eqz v1, :cond_db

    .line 3145
    invoke-interface {v0, p1}, Landroid/content/pm/IDataLoader;->destroy(I)V

    goto/16 :goto_db

    .line 3128
    :pswitch_64
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession$6;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    # setter for: Lcom/android/server/pm/PackageInstallerSession;->mDataLoaderFinished:Z
    invoke-static {v1, v2}, Lcom/android/server/pm/PackageInstallerSession;->access$1402(Lcom/android/server/pm/PackageInstallerSession;Z)Z

    .line 3129
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession$6;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageInstallerSession;->hasParentSessionId()Z

    move-result v1

    if-eqz v1, :cond_85

    .line 3130
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession$6;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    # getter for: Lcom/android/server/pm/PackageInstallerSession;->mSessionProvider:Lcom/android/server/pm/PackageSessionProvider;
    invoke-static {v1}, Lcom/android/server/pm/PackageInstallerSession;->access$1800(Lcom/android/server/pm/PackageInstallerSession;)Lcom/android/server/pm/PackageSessionProvider;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession$6;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    .line 3131
    # getter for: Lcom/android/server/pm/PackageInstallerSession;->mParentSessionId:I
    invoke-static {v2}, Lcom/android/server/pm/PackageInstallerSession;->access$1700(Lcom/android/server/pm/PackageInstallerSession;)I

    move-result v2

    .line 3130
    invoke-interface {v1, v2}, Lcom/android/server/pm/PackageSessionProvider;->getSession(I)Lcom/android/server/pm/PackageInstallerSession;

    move-result-object v1

    .line 3131
    # invokes: Lcom/android/server/pm/PackageInstallerSession;->dispatchStreamValidateAndCommit()V
    invoke-static {v1}, Lcom/android/server/pm/PackageInstallerSession;->access$1900(Lcom/android/server/pm/PackageInstallerSession;)V

    goto :goto_8a

    .line 3133
    :cond_85
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession$6;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    # invokes: Lcom/android/server/pm/PackageInstallerSession;->dispatchStreamValidateAndCommit()V
    invoke-static {v1}, Lcom/android/server/pm/PackageInstallerSession;->access$1900(Lcom/android/server/pm/PackageInstallerSession;)V

    .line 3135
    :goto_8a
    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession$6;->val$manualStartAndDestroy:Z

    if-eqz v1, :cond_db

    .line 3136
    invoke-interface {v0, p1}, Landroid/content/pm/IDataLoader;->destroy(I)V

    goto :goto_db

    .line 3120
    :pswitch_92
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession$6;->val$addedFiles:Ljava/util/List;

    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession$6;->val$addedFiles:Ljava/util/List;

    .line 3123
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Landroid/content/pm/InstallationFileParcel;

    .line 3122
    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/content/pm/InstallationFileParcel;

    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession$6;->val$removedFiles:Ljava/util/List;

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession$6;->val$removedFiles:Ljava/util/List;

    .line 3124
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 3120
    invoke-interface {v0, p1, v1, v2}, Landroid/content/pm/IDataLoader;->prepareImage(I[Landroid/content/pm/InstallationFileParcel;[Ljava/lang/String;)V

    .line 3125
    goto :goto_db

    .line 3112
    :pswitch_b6
    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession$6;->val$manualStartAndDestroy:Z

    if-eqz v1, :cond_db

    .line 3115
    invoke-interface {v0, p1}, Landroid/content/pm/IDataLoader;->start(I)V

    goto :goto_db

    .line 3103
    :pswitch_be
    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession$6;->val$manualStartAndDestroy:Z

    if-eqz v1, :cond_db

    .line 3104
    new-instance v1, Landroid/content/pm/FileSystemControlParcel;

    invoke-direct {v1}, Landroid/content/pm/FileSystemControlParcel;-><init>()V

    .line 3105
    .local v1, "control":Landroid/content/pm/FileSystemControlParcel;
    new-instance v2, Lcom/android/server/pm/PackageInstallerSession$FileSystemConnector;

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession$6;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession$6;->val$addedFiles:Ljava/util/List;

    invoke-direct {v2, v3, v4}, Lcom/android/server/pm/PackageInstallerSession$FileSystemConnector;-><init>(Lcom/android/server/pm/PackageInstallerSession;Ljava/util/List;)V

    iput-object v2, v1, Landroid/content/pm/FileSystemControlParcel;->callback:Landroid/content/pm/IPackageInstallerSessionFileSystemConnector;

    .line 3106
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession$6;->val$params:Landroid/content/pm/DataLoaderParams;

    invoke-virtual {v2}, Landroid/content/pm/DataLoaderParams;->getData()Landroid/content/pm/DataLoaderParamsParcel;

    move-result-object v2

    invoke-interface {v0, p1, v2, v1, p0}, Landroid/content/pm/IDataLoader;->create(ILandroid/content/pm/DataLoaderParamsParcel;Landroid/content/pm/FileSystemControlParcel;Landroid/content/pm/IDataLoaderStatusListener;)V
    :try_end_db
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_db} :catch_dc

    .line 3164
    .end local v0    # "dataLoader":Landroid/content/pm/IDataLoader;
    .end local v1    # "control":Landroid/content/pm/FileSystemControlParcel;
    :cond_db
    :goto_db
    goto :goto_e6

    .line 3160
    :catch_dc
    move-exception v0

    .line 3163
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession$6;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/server/pm/PackageInstallerSession;->sendPendingStreaming(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/server/pm/PackageInstallerSession;->access$2000(Lcom/android/server/pm/PackageInstallerSession;Ljava/lang/String;)V

    .line 3165
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_e6
    return-void

    .line 3084
    :cond_e7
    :goto_e7
    const/16 v0, 0x8

    if-eq p2, v0, :cond_ec

    .line 3089
    return-void

    .line 3086
    :cond_ec
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession$6;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    # invokes: Lcom/android/server/pm/PackageInstallerSession;->onStorageUnhealthy()V
    invoke-static {v0}, Lcom/android/server/pm/PackageInstallerSession;->access$1500(Lcom/android/server/pm/PackageInstallerSession;)V

    .line 3087
    return-void

    .line 3079
    :cond_f2
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession$6;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    # invokes: Lcom/android/server/pm/PackageInstallerSession;->checkPackageIntegrity()V
    invoke-static {v0}, Lcom/android/server/pm/PackageInstallerSession;->access$1300(Lcom/android/server/pm/PackageInstallerSession;)V

    .line 3080
    return-void

    .line 3077
    :cond_f8
    return-void

    nop

    :pswitch_data_fa
    .packed-switch 0x1
        :pswitch_be
        :pswitch_b6
        :pswitch_92
        :pswitch_36
        :pswitch_64
        :pswitch_4f
        :pswitch_46
        :pswitch_38
    .end packed-switch
.end method
