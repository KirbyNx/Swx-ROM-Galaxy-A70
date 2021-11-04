.class Lcom/android/server/wallpaper/WallpaperManagerService$5;
.super Landroid/os/AsyncTask;
.source "WallpaperManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wallpaper/WallpaperManagerService;->makeRestoreFileSaver(III)Landroid/os/AsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

.field final synthetic val$key:I

.field final synthetic val$userId:I

.field final synthetic val$which:I


# direct methods
.method constructor <init>(Lcom/android/server/wallpaper/WallpaperManagerService;III)V
    .registers 5
    .param p1, "this$0"    # Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 6867
    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$5;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iput p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$5;->val$which:I

    iput p3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$5;->val$userId:I

    iput p4, p0, Lcom/android/server/wallpaper/WallpaperManagerService$5;->val$key:I

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .registers 22
    .param p1, "voids"    # [Ljava/lang/Void;

    .line 6870
    move-object/from16 v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "makeRestoreFileSaver, doInBackground, which = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$5;->val$which:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WallpaperManagerService"

    invoke-static {v2, v1}, Lcom/samsung/server/wallpaper/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6871
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wallpaper/WallpaperManagerService$5;->isCancelled()Z

    move-result v1

    const/4 v3, 0x0

    .line 6873
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 6871
    if-eqz v1, :cond_3e

    .line 6872
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "makeRestoreFileSaver, doInBackground: this task is cancelled, which ="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService$5;->val$which:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/server/wallpaper/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6873
    return-object v4

    .line 6876
    :cond_3e
    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$5;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget v5, v0, Lcom/android/server/wallpaper/WallpaperManagerService$5;->val$userId:I

    iget v6, v0, Lcom/android/server/wallpaper/WallpaperManagerService$5;->val$key:I

    # invokes: Lcom/android/server/wallpaper/WallpaperManagerService;->getBackupWallpaperData(II)Lcom/android/server/wallpaper/WallpaperManagerService$BackupWallpaperData;
    invoke-static {v1, v5, v6}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$4200(Lcom/android/server/wallpaper/WallpaperManagerService;II)Lcom/android/server/wallpaper/WallpaperManagerService$BackupWallpaperData;

    move-result-object v1

    .line 6877
    .local v1, "backupWallpaperData":Lcom/android/server/wallpaper/WallpaperManagerService$BackupWallpaperData;
    if-nez v1, :cond_61

    .line 6878
    const-string v3, "backupWallpaperData is null. Fail"

    .line 6879
    .local v3, "msg":Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6880
    iget-object v5, v0, Lcom/android/server/wallpaper/WallpaperManagerService$5;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget v7, v0, Lcom/android/server/wallpaper/WallpaperManagerService$5;->val$which:I

    iget v8, v0, Lcom/android/server/wallpaper/WallpaperManagerService$5;->val$key:I

    const/4 v11, 0x0

    const-string v6, "Multiple RESTORE INTERNAL"

    const-string v9, ""

    const-string v10, ""

    move-object v12, v3

    # invokes: Lcom/android/server/wallpaper/WallpaperManagerService;->makeMultipleBackupRestoreInfo(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    invoke-static/range {v5 .. v12}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$4300(Lcom/android/server/wallpaper/WallpaperManagerService;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 6882
    return-object v4

    .line 6885
    .end local v3    # "msg":Ljava/lang/String;
    :cond_61
    iget v5, v0, Lcom/android/server/wallpaper/WallpaperManagerService$5;->val$which:I

    invoke-virtual {v1, v5}, Lcom/android/server/wallpaper/WallpaperManagerService$BackupWallpaperData;->getWallpaperData(I)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v5

    .line 6887
    .local v5, "backupData":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-nez v5, :cond_80

    .line 6888
    const-string v3, "backupData is null. Fail"

    .line 6889
    .restart local v3    # "msg":Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6890
    iget-object v6, v0, Lcom/android/server/wallpaper/WallpaperManagerService$5;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget v8, v0, Lcom/android/server/wallpaper/WallpaperManagerService$5;->val$which:I

    iget v9, v0, Lcom/android/server/wallpaper/WallpaperManagerService$5;->val$key:I

    const/4 v12, 0x0

    const-string v7, "Multiple RESTORE INTERNAL"

    const-string v10, ""

    const-string v11, ""

    move-object v13, v3

    # invokes: Lcom/android/server/wallpaper/WallpaperManagerService;->makeMultipleBackupRestoreInfo(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    invoke-static/range {v6 .. v13}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$4300(Lcom/android/server/wallpaper/WallpaperManagerService;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 6892
    return-object v4

    .line 6895
    .end local v3    # "msg":Ljava/lang/String;
    :cond_80
    invoke-virtual {v5}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 6896
    .local v4, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    iget-object v6, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v6}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getLastCallingPackage()Ljava/lang/String;

    move-result-object v6

    .line 6897
    .local v6, "lastCallingPackage":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "saveRestoreWallpaperFile, which = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v0, Lcom/android/server/wallpaper/WallpaperManagerService$5;->val$which:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " : restored wallpaper data, last callingPackage : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", type = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 6900
    invoke-virtual {v8}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWpType()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", uri = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 6901
    invoke-virtual {v8}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getUri()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ",userId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v0, Lcom/android/server/wallpaper/WallpaperManagerService$5;->val$userId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 6897
    invoke-static {v2, v7}, Lcom/samsung/server/wallpaper/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6904
    invoke-virtual {v4, v6}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->setCallingPackage(Ljava/lang/String;)V

    .line 6907
    iget v7, v0, Lcom/android/server/wallpaper/WallpaperManagerService$5;->val$which:I

    invoke-static {v7}, Lcom/samsung/server/wallpaper/WhichChecker;->isLock(I)Z

    move-result v7

    if-eqz v7, :cond_e3

    iget-object v7, v0, Lcom/android/server/wallpaper/WallpaperManagerService$5;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    # getter for: Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;
    invoke-static {v7}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$200(Lcom/android/server/wallpaper/WallpaperManagerService;)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;

    move-result-object v7

    goto :goto_e9

    :cond_e3
    iget-object v7, v0, Lcom/android/server/wallpaper/WallpaperManagerService$5;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    # getter for: Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;
    invoke-static {v7}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$300(Lcom/android/server/wallpaper/WallpaperManagerService;)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;

    move-result-object v7

    .line 6908
    .local v7, "wallpaperDataMap":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;
    :goto_e9
    iget v8, v0, Lcom/android/server/wallpaper/WallpaperManagerService$5;->val$userId:I

    iget v9, v0, Lcom/android/server/wallpaper/WallpaperManagerService$5;->val$which:I

    invoke-static {v9}, Lcom/samsung/server/wallpaper/WhichChecker;->getMode(I)I

    move-result v9

    invoke-virtual {v7, v8, v9, v4}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;->put(IILcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 6910
    const/4 v8, 0x1

    .line 6911
    .local v8, "isFileSaveSuccess":Z
    iget-object v9, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v9}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWpType()I

    move-result v9

    .line 6912
    .local v9, "wallpaperType":I
    const/4 v10, 0x3

    const/4 v11, 0x1

    if-eq v9, v10, :cond_235

    const/4 v10, -0x1

    if-ne v9, v10, :cond_116

    iget-object v10, v0, Lcom/android/server/wallpaper/WallpaperManagerService$5;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget v12, v0, Lcom/android/server/wallpaper/WallpaperManagerService$5;->val$userId:I

    iget v13, v0, Lcom/android/server/wallpaper/WallpaperManagerService$5;->val$which:I

    .line 6913
    # getter for: Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$1100(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v14

    # invokes: Lcom/android/server/wallpaper/WallpaperManagerService;->isDefaultMultipack(IILjava/lang/String;)Z
    invoke-static {v10, v12, v13, v14}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$4400(Lcom/android/server/wallpaper/WallpaperManagerService;IILjava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_235

    .line 6914
    :cond_116
    invoke-virtual {v4}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->getWallpaperFile()Ljava/io/File;

    move-result-object v10

    .line 6915
    .local v10, "targetFile":Ljava/io/File;
    if-eqz v10, :cond_1cd

    .line 6916
    iget-object v12, v0, Lcom/android/server/wallpaper/WallpaperManagerService$5;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget v13, v0, Lcom/android/server/wallpaper/WallpaperManagerService$5;->val$which:I

    iget v14, v0, Lcom/android/server/wallpaper/WallpaperManagerService$5;->val$userId:I

    iget v15, v0, Lcom/android/server/wallpaper/WallpaperManagerService$5;->val$key:I

    # invokes: Lcom/android/server/wallpaper/WallpaperManagerService;->getBackupWallpaperFile(III)Ljava/io/File;
    invoke-static {v12, v13, v14, v15}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$4000(Lcom/android/server/wallpaper/WallpaperManagerService;III)Ljava/io/File;

    move-result-object v12

    .line 6917
    .local v12, "backupFile":Ljava/io/File;
    iget-object v13, v0, Lcom/android/server/wallpaper/WallpaperManagerService$5;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    # invokes: Lcom/android/server/wallpaper/WallpaperManagerService;->saveFile(Ljava/io/File;Ljava/io/File;)Z
    invoke-static {v13, v12, v10}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$4500(Lcom/android/server/wallpaper/WallpaperManagerService;Ljava/io/File;Ljava/io/File;)Z

    move-result v13

    if-eqz v13, :cond_1b5

    .line 6918
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "save file success. which = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v0, Lcom/android/server/wallpaper/WallpaperManagerService$5;->val$which:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v2, v13}, Lcom/samsung/server/wallpaper/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6919
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "imageWallpaperPending = true, whichPending = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v0, Lcom/android/server/wallpaper/WallpaperManagerService$5;->val$which:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v2, v13}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6920
    iput-boolean v11, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->imageWallpaperPending:Z

    .line 6921
    iget v13, v0, Lcom/android/server/wallpaper/WallpaperManagerService$5;->val$which:I

    iput v13, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->whichPending:I

    .line 6924
    iget-object v13, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v13}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getPrimarySemColors()Landroid/app/SemWallpaperColors;

    move-result-object v13

    if-eqz v13, :cond_19d

    .line 6925
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "save, which"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v0, Lcom/android/server/wallpaper/WallpaperManagerService$5;->val$which:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v2, v13}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6927
    iget-object v13, v0, Lcom/android/server/wallpaper/WallpaperManagerService$5;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    # getter for: Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;
    invoke-static {v13}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$1000(Lcom/android/server/wallpaper/WallpaperManagerService;)Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    move-result-object v13

    iget-object v13, v13, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mLegibilityColor:Lcom/samsung/server/wallpaper/LegibilityColor;

    iget v13, v0, Lcom/android/server/wallpaper/WallpaperManagerService$5;->val$userId:I

    iget v14, v0, Lcom/android/server/wallpaper/WallpaperManagerService$5;->val$which:I

    invoke-static {v13, v14, v3}, Lcom/samsung/server/wallpaper/LegibilityColor;->getWallpaperColorPath(IIZ)Ljava/lang/String;

    move-result-object v3

    .line 6928
    .local v3, "path":Ljava/lang/String;
    iget-object v13, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v13}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getPrimarySemColors()Landroid/app/SemWallpaperColors;

    move-result-object v13

    invoke-virtual {v13, v3}, Landroid/app/SemWallpaperColors;->save(Ljava/lang/String;)V

    .line 6929
    .end local v3    # "path":Ljava/lang/String;
    goto :goto_1cd

    .line 6930
    :cond_19d
    const-string/jumbo v3, "power off->on scenario"

    invoke-static {v2, v3}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6931
    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService$5;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    # getter for: Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;
    invoke-static {v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$1000(Lcom/android/server/wallpaper/WallpaperManagerService;)Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    move-result-object v3

    iget-object v3, v3, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mLegibilityColor:Lcom/samsung/server/wallpaper/LegibilityColor;

    iget-object v13, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v13}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWhich()I

    move-result v13

    invoke-virtual {v3, v13}, Lcom/samsung/server/wallpaper/LegibilityColor;->extractColor(I)V

    goto :goto_1cd

    .line 6935
    :cond_1b5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "save file fail. which = "

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v0, Lcom/android/server/wallpaper/WallpaperManagerService$5;->val$which:I

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6936
    const/4 v8, 0x0

    .line 6940
    .end local v12    # "backupFile":Ljava/io/File;
    :cond_1cd
    :goto_1cd
    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService$5;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    # getter for: Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;
    invoke-static {v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$1000(Lcom/android/server/wallpaper/WallpaperManagerService;)Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    move-result-object v3

    iget-object v12, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v12}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWpType()I

    move-result v12

    invoke-virtual {v3, v12}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->isLiveWallpaper(I)Z

    move-result v3

    if-eqz v3, :cond_20b

    .line 6941
    iget-object v3, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    .line 6943
    .local v3, "liveWallpaperComponent":Landroid/content/ComponentName;
    const/4 v12, 0x0

    iput-object v12, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    .line 6944
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "set liveWallpaper, wallpaperComponent="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v2, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6945
    sget-boolean v12, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_SUB_DISPLAY_MODE:Z

    if-eqz v12, :cond_205

    .line 6946
    iget-object v12, v0, Lcom/android/server/wallpaper/WallpaperManagerService$5;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget v13, v0, Lcom/android/server/wallpaper/WallpaperManagerService$5;->val$which:I

    # invokes: Lcom/android/server/wallpaper/WallpaperManagerService;->setWallpaperComponent(ILandroid/content/ComponentName;)V
    invoke-static {v12, v13, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$4600(Lcom/android/server/wallpaper/WallpaperManagerService;ILandroid/content/ComponentName;)V

    goto :goto_20a

    .line 6948
    :cond_205
    iget-object v12, v0, Lcom/android/server/wallpaper/WallpaperManagerService$5;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-virtual {v12, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->setWallpaperComponent(Landroid/content/ComponentName;)V

    .line 6950
    :goto_20a
    const/4 v8, 0x1

    .line 6953
    .end local v3    # "liveWallpaperComponent":Landroid/content/ComponentName;
    :cond_20b
    if-nez v8, :cond_228

    .line 6954
    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService$5;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v12, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    # invokes: Lcom/android/server/wallpaper/WallpaperManagerService;->resetSemWallpaperData(Lcom/samsung/server/wallpaper/SemWallpaperData;)V
    invoke-static {v3, v12}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$700(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/samsung/server/wallpaper/SemWallpaperData;)V

    .line 6955
    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService$5;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    # getter for: Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$1100(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v12

    iget v13, v0, Lcom/android/server/wallpaper/WallpaperManagerService$5;->val$which:I

    .line 6956
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v14

    .line 6955
    invoke-virtual {v3, v12, v13, v14}, Lcom/android/server/wallpaper/WallpaperManagerService;->clearWallpaper(Ljava/lang/String;II)V

    goto :goto_235

    .line 6958
    :cond_228
    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService$5;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget v12, v0, Lcom/android/server/wallpaper/WallpaperManagerService$5;->val$userId:I

    iget v13, v0, Lcom/android/server/wallpaper/WallpaperManagerService$5;->val$which:I

    invoke-static {v13}, Lcom/samsung/server/wallpaper/WhichChecker;->getMode(I)I

    move-result v13

    # invokes: Lcom/android/server/wallpaper/WallpaperManagerService;->saveSettingsLocked(II)V
    invoke-static {v3, v12, v13}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$1600(Lcom/android/server/wallpaper/WallpaperManagerService;II)V

    .line 6964
    .end local v10    # "targetFile":Ljava/io/File;
    :cond_235
    :goto_235
    iget v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService$5;->val$which:I

    const/4 v10, 0x2

    and-int/2addr v3, v10

    if-ne v3, v10, :cond_25d

    .line 6965
    const-string/jumbo v3, "makeRestoreFileSaver: doInBackground: notifyLockWallpaperChanged called"

    invoke-static {v2, v3}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6966
    iget-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$5;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v3, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v3}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWpType()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyLockWallpaperChanged(I)V

    .line 6967
    sget-boolean v2, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_SUB_DISPLAY_MODE:Z

    if-eqz v2, :cond_25d

    .line 6968
    iget-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$5;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v3, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v3}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWpType()I

    move-result v3

    iget v10, v0, Lcom/android/server/wallpaper/WallpaperManagerService$5;->val$which:I

    invoke-virtual {v2, v3, v10}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyLockWallpaperChanged(II)V

    .line 6972
    :cond_25d
    iget-object v12, v0, Lcom/android/server/wallpaper/WallpaperManagerService$5;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget v14, v0, Lcom/android/server/wallpaper/WallpaperManagerService$5;->val$which:I

    iget v15, v0, Lcom/android/server/wallpaper/WallpaperManagerService$5;->val$key:I

    iget-object v2, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    .line 6973
    invoke-virtual {v4}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->getPackageName()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x1

    .line 6972
    const-string v13, "Multiple RESTORE INTERNAL"

    const-string v19, ""

    move-object/from16 v16, v2

    # invokes: Lcom/android/server/wallpaper/WallpaperManagerService;->makeMultipleBackupRestoreInfo(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    invoke-static/range {v12 .. v19}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$4300(Lcom/android/server/wallpaper/WallpaperManagerService;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 6974
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    return-object v2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 6867
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$5;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .registers 6
    .param p1, "aBoolean"    # Ljava/lang/Boolean;

    .line 6979
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 6981
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$5;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$5;->val$userId:I

    iget v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$5;->val$key:I

    # invokes: Lcom/android/server/wallpaper/WallpaperManagerService;->updateSettingValue(II)V
    invoke-static {v0, v1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$4700(Lcom/android/server/wallpaper/WallpaperManagerService;II)V

    .line 6984
    :cond_f
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$5;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$5;->val$userId:I

    iget v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$5;->val$key:I

    iget v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$5;->val$which:I

    # invokes: Lcom/android/server/wallpaper/WallpaperManagerService;->removeBackupWallpaperData(III)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$4800(Lcom/android/server/wallpaper/WallpaperManagerService;III)V

    .line 6986
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$5;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    # getter for: Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$100(Lcom/android/server/wallpaper/WallpaperManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 6987
    :try_start_21
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$5;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$5;->val$userId:I

    # invokes: Lcom/android/server/wallpaper/WallpaperManagerService;->saveSettingsLockedForBackupData(I)V
    invoke-static {v1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$4900(Lcom/android/server/wallpaper/WallpaperManagerService;I)V

    .line 6988
    monitor-exit v0

    .line 6989
    return-void

    .line 6988
    :catchall_2a
    move-exception v1

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_21 .. :try_end_2c} :catchall_2a

    throw v1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 6867
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$5;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
