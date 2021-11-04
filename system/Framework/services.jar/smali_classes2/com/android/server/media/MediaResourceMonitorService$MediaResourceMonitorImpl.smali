.class Lcom/android/server/media/MediaResourceMonitorService$MediaResourceMonitorImpl;
.super Landroid/media/IMediaResourceMonitor$Stub;
.source "MediaResourceMonitorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/MediaResourceMonitorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MediaResourceMonitorImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/media/MediaResourceMonitorService;


# direct methods
.method constructor <init>(Lcom/android/server/media/MediaResourceMonitorService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/media/MediaResourceMonitorService;

    .line 95
    iput-object p1, p0, Lcom/android/server/media/MediaResourceMonitorService$MediaResourceMonitorImpl;->this$0:Lcom/android/server/media/MediaResourceMonitorService;

    invoke-direct {p0}, Landroid/media/IMediaResourceMonitor$Stub;-><init>()V

    return-void
.end method

.method private getBroadcastIntent(ILandroid/media/MediaMonitorEvent;)Landroid/content/Intent;
    .registers 16
    .param p1, "pid"    # I
    .param p2, "event"    # Landroid/media/MediaMonitorEvent;

    .line 217
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 218
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "tracking_id"

    const-string v2, "4H9-399-505457"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    iget-object v1, p2, Landroid/media/MediaMonitorEvent;->mName:Ljava/lang/String;

    const-string v2, "feature"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    sget v1, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    const-string v2, ","

    const/4 v3, 0x0

    const/4 v4, 0x1

    const v5, 0x1d524

    if-gt v5, v1, :cond_6f

    .line 225
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 226
    .local v1, "dimension":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v5, p2, Landroid/media/MediaMonitorEvent;->mCustomDimensions:[Landroid/media/MediaMonitorDimension;

    array-length v6, v5

    :goto_27
    if-ge v3, v6, :cond_69

    aget-object v7, v5, v3

    .line 227
    .local v7, "customDimension":Landroid/media/MediaMonitorDimension;
    iget v8, v7, Landroid/media/MediaMonitorDimension;->mType:I

    .line 228
    .local v8, "type":I
    iget-object v9, v7, Landroid/media/MediaMonitorDimension;->mName:Ljava/lang/String;

    .line 229
    .local v9, "name":Ljava/lang/String;
    if-nez v8, :cond_57

    .line 230
    invoke-virtual {v7}, Landroid/media/MediaMonitorDimension;->getText()Ljava/lang/String;

    move-result-object v10

    .line 231
    .local v10, "text":Ljava/lang/String;
    const-string v11, "1003"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_53

    .line 232
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/android/server/media/MediaResourceMonitorService$MediaResourceMonitorImpl;->getPackageName(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 234
    :cond_53
    invoke-virtual {v1, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    .end local v10    # "text":Ljava/lang/String;
    goto :goto_60

    :cond_57
    if-ne v8, v4, :cond_63

    .line 236
    invoke-virtual {v7}, Landroid/media/MediaMonitorDimension;->getNumber()J

    move-result-wide v10

    invoke-virtual {v0, v9, v10, v11}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 226
    .end local v7    # "customDimension":Landroid/media/MediaMonitorDimension;
    .end local v8    # "type":I
    .end local v9    # "name":Ljava/lang/String;
    :goto_60
    add-int/lit8 v3, v3, 0x1

    goto :goto_27

    .line 238
    .restart local v7    # "customDimension":Landroid/media/MediaMonitorDimension;
    .restart local v8    # "type":I
    .restart local v9    # "name":Ljava/lang/String;
    :cond_63
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 241
    .end local v7    # "customDimension":Landroid/media/MediaMonitorDimension;
    .end local v8    # "type":I
    .end local v9    # "name":Ljava/lang/String;
    :cond_69
    const-string v2, "dimension"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 242
    .end local v1    # "dimension":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_b6

    .line 243
    :cond_6f
    iget-object v1, p2, Landroid/media/MediaMonitorEvent;->mCustomDimensions:[Landroid/media/MediaMonitorDimension;

    array-length v5, v1

    :goto_72
    if-ge v3, v5, :cond_b6

    aget-object v6, v1, v3

    .line 244
    .local v6, "customDimension":Landroid/media/MediaMonitorDimension;
    iget v7, v6, Landroid/media/MediaMonitorDimension;->mType:I

    .line 245
    .local v7, "type":I
    iget-object v8, v6, Landroid/media/MediaMonitorDimension;->mName:Ljava/lang/String;

    .line 246
    .local v8, "name":Ljava/lang/String;
    if-nez v7, :cond_a4

    .line 247
    invoke-virtual {v6}, Landroid/media/MediaMonitorDimension;->getText()Ljava/lang/String;

    move-result-object v9

    .line 248
    .local v9, "text":Ljava/lang/String;
    iget-object v10, p2, Landroid/media/MediaMonitorEvent;->mName:Ljava/lang/String;

    const-string v11, "MMIF_PACKAGE"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a0

    .line 249
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/android/server/media/MediaResourceMonitorService$MediaResourceMonitorImpl;->getPackageName(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 251
    :cond_a0
    invoke-virtual {v0, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    .end local v9    # "text":Ljava/lang/String;
    goto :goto_ad

    :cond_a4
    if-ne v7, v4, :cond_b0

    .line 253
    invoke-virtual {v6}, Landroid/media/MediaMonitorDimension;->getNumber()J

    move-result-wide v9

    invoke-virtual {v0, v8, v9, v10}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 243
    .end local v6    # "customDimension":Landroid/media/MediaMonitorDimension;
    .end local v7    # "type":I
    .end local v8    # "name":Ljava/lang/String;
    :goto_ad
    add-int/lit8 v3, v3, 0x1

    goto :goto_72

    .line 255
    .restart local v6    # "customDimension":Landroid/media/MediaMonitorDimension;
    .restart local v7    # "type":I
    .restart local v8    # "name":Ljava/lang/String;
    :cond_b0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 259
    .end local v6    # "customDimension":Landroid/media/MediaMonitorDimension;
    .end local v7    # "type":I
    .end local v8    # "name":Ljava/lang/String;
    :cond_b6
    :goto_b6
    const-string/jumbo v1, "type"

    const-string v2, "ev"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 262
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "com.sec.android.diagmonagent.intent.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 263
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 264
    const-string v2, "com.sec.android.diagmonagent"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 266
    return-object v1
.end method

.method private getErrorType(I)Ljava/lang/String;
    .registers 3
    .param p1, "id"    # I

    .line 207
    if-eqz p1, :cond_18

    const/4 v0, 0x1

    if-eq p1, v0, :cond_15

    const/4 v0, 0x2

    if-eq p1, v0, :cond_12

    const/4 v0, 0x3

    if-eq p1, v0, :cond_f

    .line 212
    const-string/jumbo v0, "unknown"

    return-object v0

    .line 211
    :cond_f
    const-string v0, "Resolution Limit"

    return-object v0

    .line 210
    :cond_12
    const-string v0, "Unsupported Codec"

    return-object v0

    .line 209
    :cond_15
    const-string v0, "Invalid File"

    return-object v0

    .line 208
    :cond_18
    const-string v0, "No Error"

    return-object v0
.end method

.method private getPackageName(I)Ljava/lang/String;
    .registers 7
    .param p1, "pid"    # I

    .line 270
    const-string v0, ""

    .line 271
    .local v0, "packageName":Ljava/lang/String;
    const/4 v1, -0x1

    if-ne p1, v1, :cond_6

    .line 272
    return-object v0

    .line 274
    :cond_6
    invoke-direct {p0, p1}, Lcom/android/server/media/MediaResourceMonitorService$MediaResourceMonitorImpl;->getPackageNamesFromPid(I)[Ljava/lang/String;

    move-result-object v1

    .line 275
    .local v1, "packageNames":[Ljava/lang/String;
    if-eqz v1, :cond_22

    array-length v2, v1

    if-gtz v2, :cond_10

    goto :goto_22

    .line 278
    :cond_10
    const/4 v2, 0x0

    aget-object v3, v1, v2

    aget-object v2, v1, v2

    const-string v4, "."

    invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 279
    return-object v0

    .line 276
    :cond_22
    :goto_22
    return-object v0
.end method

.method private getPackageNamesFromPid(I)[Ljava/lang/String;
    .registers 5
    .param p1, "pid"    # I

    .line 286
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 287
    .local v1, "proc":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v2, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v2, p1, :cond_1f

    .line 288
    iget-object v0, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1e} :catch_21

    return-object v0

    .line 290
    .end local v1    # "proc":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_1f
    goto :goto_c

    .line 293
    :cond_20
    goto :goto_29

    .line 291
    :catch_21
    move-exception v0

    .line 292
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaResourceMonitor"

    const-string v2, "ActivityManager.getRunningAppProcesses() failed"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_29
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public checkVersionOfDMA(Landroid/content/Context;)Z
    .registers 9
    .param p1, "context"    # Landroid/content/Context;

    .line 298
    const-string v0, "MediaResourceMonitor"

    const-string v1, "com.sec.android.diagmonagent"

    .line 299
    .local v1, "DMA_PKG_NAME":Ljava/lang/String;
    const v2, 0x202fbf00

    .line 302
    .local v2, "DMA_SUPPORT_VERSION":I
    const/4 v3, 0x0

    :try_start_8
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 304
    .local v4, "packageInfo":Landroid/content/pm/PackageInfo;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dma version code:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v4, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    iget v0, v4, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_28} :catch_2c

    if-lt v0, v2, :cond_2b

    const/4 v3, 0x1

    :cond_2b
    return v3

    .line 306
    .end local v4    # "packageInfo":Landroid/content/pm/PackageInfo;
    :catch_2c
    move-exception v4

    .line 307
    .local v4, "ex":Ljava/lang/Exception;
    const-string v5, "MediaInfo DMA failed"

    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    return v3
.end method

.method public notifyMediaError(ILjava/lang/String;IILjava/lang/String;)V
    .registers 37
    .param p1, "pid"    # I
    .param p2, "mime"    # Ljava/lang/String;
    .param p3, "errorType"    # I
    .param p4, "fourcc"    # I
    .param p5, "errorDetails"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 149
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move/from16 v3, p4

    move-object/from16 v4, p5

    const-string v5, "MediaResourceMonitor"

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 151
    .local v6, "identity":J
    :try_start_e
    invoke-direct/range {p0 .. p1}, Lcom/android/server/media/MediaResourceMonitorService$MediaResourceMonitorImpl;->getPackageNamesFromPid(I)[Ljava/lang/String;

    move-result-object v0

    .line 152
    .local v0, "pkgNames":[Ljava/lang/String;
    const/4 v8, 0x0

    .line 153
    .local v8, "sPackage":Ljava/lang/String;
    const-string v9, ", "
    :try_end_15
    .catch Ljava/lang/ClassCastException; {:try_start_e .. :try_end_15} :catch_13e
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_15} :catch_131
    .catchall {:try_start_e .. :try_end_15} :catchall_12d

    .line 154
    .local v9, "sep":Ljava/lang/String;
    move/from16 v10, p3

    :try_start_17
    invoke-direct {v1, v10}, Lcom/android/server/media/MediaResourceMonitorService$MediaResourceMonitorImpl;->getErrorType(I)Ljava/lang/String;

    move-result-object v11

    .line 155
    .local v11, "sErrorType":Ljava/lang/String;
    if-eqz v0, :cond_22

    .line 156
    const/4 v12, 0x0

    aget-object v12, v0, v12

    move-object v8, v12

    goto :goto_26

    .line 158
    :cond_22
    const-string/jumbo v12, "no Package"

    move-object v8, v12

    .line 161
    :goto_26
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 162
    .local v12, "extraInfo":Ljava/lang/String;
    # getter for: Lcom/android/server/media/MediaResourceMonitorService;->DEBUG:Z
    invoke-static {}, Lcom/android/server/media/MediaResourceMonitorService;->access$100()Z

    move-result v13

    if-eqz v13, :cond_8a

    .line 163
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "notifyMediaError (package="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ", mime="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ", errorType="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ", fourcc="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ", errorDetails="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ")"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v5, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :cond_8a
    # getter for: Lcom/android/server/media/MediaResourceMonitorService;->mServiceEnabled:Z
    invoke-static {}, Lcom/android/server/media/MediaResourceMonitorService;->access$200()Z

    move-result v13

    if-eqz v13, :cond_120

    .line 167
    iget-object v13, v1, Lcom/android/server/media/MediaResourceMonitorService$MediaResourceMonitorImpl;->this$0:Lcom/android/server/media/MediaResourceMonitorService;

    invoke-virtual {v13}, Lcom/android/server/media/MediaResourceMonitorService;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v1, v13}, Lcom/android/server/media/MediaResourceMonitorService$MediaResourceMonitorImpl;->checkVersionOfDMA(Landroid/content/Context;)Z

    move-result v13
    :try_end_9a
    .catch Ljava/lang/ClassCastException; {:try_start_17 .. :try_end_9a} :catch_12b
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_9a} :catch_129
    .catchall {:try_start_17 .. :try_end_9a} :catchall_127

    const-string v14, "extra"

    const-string v15, "MMER"

    move-object/from16 v16, v0

    .end local v0    # "pkgNames":[Ljava/lang/String;
    .local v16, "pkgNames":[Ljava/lang/String;
    const-string v0, "feature"

    if-eqz v13, :cond_db

    .line 169
    :try_start_a4
    new-instance v13, Landroid/os/Bundle;

    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    .line 170
    .local v13, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "tracking_id"

    const-string v3, "4H9-399-505457"

    invoke-virtual {v13, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    invoke-virtual {v13, v0, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    invoke-virtual {v13, v14, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const-string/jumbo v0, "type"

    const-string v2, "ev"

    invoke-virtual {v13, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 176
    .local v0, "broadcastIntent":Landroid/content/Intent;
    const-string v2, "com.sec.android.diagmonagent.intent.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 177
    invoke-virtual {v0, v13}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 178
    const-string v2, "com.sec.android.diagmonagent"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 179
    iget-object v2, v1, Lcom/android/server/media/MediaResourceMonitorService$MediaResourceMonitorImpl;->this$0:Lcom/android/server/media/MediaResourceMonitorService;

    invoke-virtual {v2}, Lcom/android/server/media/MediaResourceMonitorService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 180
    .end local v0    # "broadcastIntent":Landroid/content/Intent;
    .end local v13    # "bundle":Landroid/os/Bundle;
    goto :goto_122

    .line 182
    :cond_db
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 183
    .local v2, "cv":Landroid/content/ContentValues;
    const-string v3, "app_id"

    const-string v13, "MMFW"

    invoke-virtual {v2, v3, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    invoke-virtual {v2, v0, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    invoke-virtual {v2, v14, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 188
    .restart local v0    # "broadcastIntent":Landroid/content/Intent;
    const-string v3, "data"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 189
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v17

    const/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, -0x1

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, -0x1

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    .line 192
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v30

    .line 189
    move-object/from16 v19, v0

    invoke-interface/range {v17 .. v30}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I
    :try_end_11f
    .catch Ljava/lang/ClassCastException; {:try_start_a4 .. :try_end_11f} :catch_12b
    .catch Landroid/os/RemoteException; {:try_start_a4 .. :try_end_11f} :catch_129
    .catchall {:try_start_a4 .. :try_end_11f} :catchall_127

    goto :goto_122

    .line 166
    .end local v2    # "cv":Landroid/content/ContentValues;
    .end local v16    # "pkgNames":[Ljava/lang/String;
    .local v0, "pkgNames":[Ljava/lang/String;
    :cond_120
    move-object/from16 v16, v0

    .line 202
    .end local v0    # "pkgNames":[Ljava/lang/String;
    .end local v8    # "sPackage":Ljava/lang/String;
    .end local v9    # "sep":Ljava/lang/String;
    .end local v11    # "sErrorType":Ljava/lang/String;
    .end local v12    # "extraInfo":Ljava/lang/String;
    :goto_122
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 203
    nop

    .line 204
    return-void

    .line 202
    :catchall_127
    move-exception v0

    goto :goto_14b

    .line 198
    :catch_129
    move-exception v0

    goto :goto_134

    .line 195
    :catch_12b
    move-exception v0

    goto :goto_141

    .line 202
    :catchall_12d
    move-exception v0

    move/from16 v10, p3

    goto :goto_14b

    .line 198
    :catch_131
    move-exception v0

    move/from16 v10, p3

    .line 199
    .local v0, "ex":Landroid/os/RemoteException;
    :goto_134
    :try_start_134
    const-string/jumbo v2, "sendBroadcast fail"

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13a
    .catchall {:try_start_134 .. :try_end_13a} :catchall_127

    .line 202
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 200
    return-void

    .line 195
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_13e
    move-exception v0

    move/from16 v10, p3

    .line 196
    .local v0, "ex":Ljava/lang/ClassCastException;
    :goto_141
    :try_start_141
    const-string/jumbo v2, "sendBroadcast(ClassCastException) fail"

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_147
    .catchall {:try_start_141 .. :try_end_147} :catchall_127

    .line 202
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 197
    return-void

    .line 202
    .end local v0    # "ex":Ljava/lang/ClassCastException;
    :goto_14b
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 203
    throw v0
.end method

.method public notifyMediaInfo(ILandroid/media/MediaMonitorEvent;)V
    .registers 8
    .param p1, "pid"    # I
    .param p2, "event"    # Landroid/media/MediaMonitorEvent;

    .line 134
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 136
    .local v0, "identity":J
    :try_start_4
    invoke-direct {p0, p1, p2}, Lcom/android/server/media/MediaResourceMonitorService$MediaResourceMonitorImpl;->getBroadcastIntent(ILandroid/media/MediaMonitorEvent;)Landroid/content/Intent;

    move-result-object v2

    .line 137
    .local v2, "broadcastIntent":Landroid/content/Intent;
    # getter for: Lcom/android/server/media/MediaResourceMonitorService;->mServiceEnabled:Z
    invoke-static {}, Lcom/android/server/media/MediaResourceMonitorService;->access$200()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 138
    iget-object v3, p0, Lcom/android/server/media/MediaResourceMonitorService$MediaResourceMonitorImpl;->this$0:Lcom/android/server/media/MediaResourceMonitorService;

    invoke-virtual {v3}, Lcom/android/server/media/MediaResourceMonitorService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_17} :catch_1e
    .catchall {:try_start_4 .. :try_end_17} :catchall_1c

    .line 143
    .end local v2    # "broadcastIntent":Landroid/content/Intent;
    :cond_17
    nop

    :goto_18
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 144
    goto :goto_29

    .line 143
    :catchall_1c
    move-exception v2

    goto :goto_2a

    .line 140
    :catch_1e
    move-exception v2

    .line 141
    .local v2, "ex":Ljava/lang/Exception;
    :try_start_1f
    const-string v3, "MediaResourceMonitor"

    const-string/jumbo v4, "sendBroadcast fail"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_27
    .catchall {:try_start_1f .. :try_end_27} :catchall_1c

    .line 143
    nop

    .end local v2    # "ex":Ljava/lang/Exception;
    goto :goto_18

    .line 145
    :goto_29
    return-void

    .line 143
    :goto_2a
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 144
    throw v2
.end method

.method public notifyResourceGranted(II)V
    .registers 15
    .param p1, "pid"    # I
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lcom/android/server/media/MediaResourceMonitorService$MediaResourceMonitorImpl;->this$0:Lcom/android/server/media/MediaResourceMonitorService;

    invoke-virtual {v0}, Lcom/android/server/media/MediaResourceMonitorService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    # setter for: Lcom/android/server/media/MediaResourceMonitorService;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {v0, v1}, Lcom/android/server/media/MediaResourceMonitorService;->access$002(Lcom/android/server/media/MediaResourceMonitorService;Landroid/content/pm/PackageManager;)Landroid/content/pm/PackageManager;

    .line 101
    iget-object v0, p0, Lcom/android/server/media/MediaResourceMonitorService$MediaResourceMonitorImpl;->this$0:Lcom/android/server/media/MediaResourceMonitorService;

    # getter for: Lcom/android/server/media/MediaResourceMonitorService;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {v0}, Lcom/android/server/media/MediaResourceMonitorService;->access$000(Lcom/android/server/media/MediaResourceMonitorService;)Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.software.picture_in_picture"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 102
    return-void

    .line 105
    :cond_1c
    # getter for: Lcom/android/server/media/MediaResourceMonitorService;->DEBUG:Z
    invoke-static {}, Lcom/android/server/media/MediaResourceMonitorService;->access$100()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "notifyResourceGranted(pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaResourceMonitor"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :cond_46
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 110
    .local v0, "identity":J
    :try_start_4a
    invoke-direct {p0, p1}, Lcom/android/server/media/MediaResourceMonitorService$MediaResourceMonitorImpl;->getPackageNamesFromPid(I)[Ljava/lang/String;

    move-result-object v2
    :try_end_4e
    .catchall {:try_start_4a .. :try_end_4e} :catchall_a3

    .line 111
    .local v2, "pkgNames":[Ljava/lang/String;
    if-nez v2, :cond_54

    .line 128
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 112
    return-void

    .line 114
    :cond_54
    :try_start_54
    iget-object v3, p0, Lcom/android/server/media/MediaResourceMonitorService$MediaResourceMonitorImpl;->this$0:Lcom/android/server/media/MediaResourceMonitorService;

    invoke-virtual {v3}, Lcom/android/server/media/MediaResourceMonitorService;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "user"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    .line 116
    .local v3, "manager":Landroid/os/UserManager;
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/os/UserManager;->getEnabledProfileIds(I)[I

    move-result-object v4

    .line 117
    .local v4, "userIds":[I
    if-eqz v4, :cond_9f

    array-length v5, v4

    if-nez v5, :cond_71

    goto :goto_9f

    .line 120
    :cond_71
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.MEDIA_RESOURCE_GRANTED"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 121
    .local v5, "intent":Landroid/content/Intent;
    const-string v6, "android.intent.extra.PACKAGES"

    invoke-virtual {v5, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 122
    const-string v6, "android.intent.extra.MEDIA_RESOURCE_TYPE"

    invoke-virtual {v5, v6, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 123
    array-length v6, v4

    const/4 v7, 0x0

    :goto_84
    if-ge v7, v6, :cond_9a

    aget v8, v4, v7

    .line 124
    .local v8, "userId":I
    iget-object v9, p0, Lcom/android/server/media/MediaResourceMonitorService$MediaResourceMonitorImpl;->this$0:Lcom/android/server/media/MediaResourceMonitorService;

    invoke-virtual {v9}, Lcom/android/server/media/MediaResourceMonitorService;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v8}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v10

    const-string v11, "android.permission.RECEIVE_MEDIA_RESOURCE_USAGE"

    invoke-virtual {v9, v5, v10, v11}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_97
    .catchall {:try_start_54 .. :try_end_97} :catchall_a3

    .line 123
    .end local v8    # "userId":I
    add-int/lit8 v7, v7, 0x1

    goto :goto_84

    .line 128
    .end local v2    # "pkgNames":[Ljava/lang/String;
    .end local v3    # "manager":Landroid/os/UserManager;
    .end local v4    # "userIds":[I
    .end local v5    # "intent":Landroid/content/Intent;
    :cond_9a
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 129
    nop

    .line 130
    return-void

    .line 128
    .restart local v2    # "pkgNames":[Ljava/lang/String;
    .restart local v3    # "manager":Landroid/os/UserManager;
    .restart local v4    # "userIds":[I
    :cond_9f
    :goto_9f
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 118
    return-void

    .line 128
    .end local v2    # "pkgNames":[Ljava/lang/String;
    .end local v3    # "manager":Landroid/os/UserManager;
    .end local v4    # "userIds":[I
    :catchall_a3
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 129
    throw v2
.end method
