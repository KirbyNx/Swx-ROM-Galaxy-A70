.class Lcom/android/server/ipm/DexPreloader$Dex2OatTask;
.super Ljava/lang/Object;
.source "DexPreloader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ipm/DexPreloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Dex2OatTask"
.end annotation


# instance fields
.field pkgName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/ipm/DexPreloader;


# direct methods
.method public constructor <init>(Lcom/android/server/ipm/DexPreloader;Ljava/lang/String;)V
    .registers 5
    .param p2, "pkg"    # Ljava/lang/String;

    .line 306
    iput-object p1, p0, Lcom/android/server/ipm/DexPreloader$Dex2OatTask;->this$0:Lcom/android/server/ipm/DexPreloader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 305
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/ipm/DexPreloader$Dex2OatTask;->pkgName:Ljava/lang/String;

    .line 307
    # getter for: Lcom/android/server/ipm/DexPreloader;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/ipm/DexPreloader;->access$200()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " prepare a new task for pkg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " dex2oat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    iput-object p2, p0, Lcom/android/server/ipm/DexPreloader$Dex2OatTask;->pkgName:Ljava/lang/String;

    .line 309
    return-void
.end method


# virtual methods
.method public run()V
    .registers 16

    .line 312
    # getter for: Lcom/android/server/ipm/DexPreloader;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/ipm/DexPreloader;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " start a thread to run dex2oat task for pkg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/ipm/DexPreloader$Dex2OatTask;->pkgName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 314
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dex2oat pkg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/ipm/DexPreloader$Dex2OatTask;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x40

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 315
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x7530

    add-long/2addr v3, v5

    .line 316
    .local v3, "dexoptTimeout":J
    iget-object v0, p0, Lcom/android/server/ipm/DexPreloader$Dex2OatTask;->pkgName:Ljava/lang/String;

    if-eqz v0, :cond_118

    .line 317
    iget-object v0, p0, Lcom/android/server/ipm/DexPreloader$Dex2OatTask;->this$0:Lcom/android/server/ipm/DexPreloader;

    # getter for: Lcom/android/server/ipm/DexPreloader;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;
    invoke-static {v0}, Lcom/android/server/ipm/DexPreloader;->access$900(Lcom/android/server/ipm/DexPreloader;)Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    iget-object v5, p0, Lcom/android/server/ipm/DexPreloader$Dex2OatTask;->pkgName:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/content/pm/PackageManagerInternal;->performDexOptForADCP(Ljava/lang/String;Z)I

    .line 318
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    cmp-long v0, v7, v3

    if-lez v0, :cond_66

    .line 320
    :try_start_56
    # getter for: Lcom/android/server/ipm/DexPreloader;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/ipm/DexPreloader;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v5, " cost much here"

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    const-wide/16 v7, 0x64

    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_64
    .catch Ljava/lang/InterruptedException; {:try_start_56 .. :try_end_64} :catch_65

    .line 324
    goto :goto_66

    .line 322
    :catch_65
    move-exception v0

    .line 326
    :cond_66
    :goto_66
    iget-object v0, p0, Lcom/android/server/ipm/DexPreloader$Dex2OatTask;->this$0:Lcom/android/server/ipm/DexPreloader;

    # getter for: Lcom/android/server/ipm/DexPreloader;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;
    invoke-static {v0}, Lcom/android/server/ipm/DexPreloader;->access$900(Lcom/android/server/ipm/DexPreloader;)Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    iget-object v5, p0, Lcom/android/server/ipm/DexPreloader$Dex2OatTask;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v0

    .line 327
    .local v0, "pa":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-eqz v0, :cond_f9

    .line 328
    const-wide/16 v7, 0x0

    .line 329
    .local v7, "artSize":J
    const/4 v5, 0x0

    .line 330
    .local v5, "artFile":Ljava/io/File;
    invoke-interface {v0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPrimaryCpuAbi()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_82

    sget-object v9, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    aget-object v9, v9, v6

    goto :goto_86

    :cond_82
    invoke-interface {v0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPrimaryCpuAbi()Ljava/lang/String;

    move-result-object v9

    .line 331
    .local v9, "abi":Ljava/lang/String;
    :goto_86
    invoke-interface {v0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getCodePath()Ljava/lang/String;

    move-result-object v10

    .line 332
    .local v10, "codePath":Ljava/lang/String;
    if-eqz v9, :cond_ac

    const-string v11, "armeabi"

    invoke-virtual {v9, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_ac

    .line 333
    new-instance v11, Ljava/io/File;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "/oat/arm/base.art"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v5, v11

    goto :goto_c3

    .line 335
    :cond_ac
    new-instance v11, Ljava/io/File;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "/oat/arm64/base.art"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v5, v11

    .line 337
    :goto_c3
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_cd

    .line 338
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v7

    .line 340
    :cond_cd
    iget-object v11, p0, Lcom/android/server/ipm/DexPreloader$Dex2OatTask;->this$0:Lcom/android/server/ipm/DexPreloader;

    # getter for: Lcom/android/server/ipm/DexPreloader;->mCachedApps:Ljava/util/HashMap;
    invoke-static {v11}, Lcom/android/server/ipm/DexPreloader;->access$400(Lcom/android/server/ipm/DexPreloader;)Ljava/util/HashMap;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/ipm/DexPreloader$Dex2OatTask;->pkgName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_f8

    .line 341
    iget-object v11, p0, Lcom/android/server/ipm/DexPreloader$Dex2OatTask;->this$0:Lcom/android/server/ipm/DexPreloader;

    # getter for: Lcom/android/server/ipm/DexPreloader;->mCachedApps:Ljava/util/HashMap;
    invoke-static {v11}, Lcom/android/server/ipm/DexPreloader;->access$400(Lcom/android/server/ipm/DexPreloader;)Ljava/util/HashMap;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/ipm/DexPreloader$Dex2OatTask;->pkgName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/ipm/DexPreloader$CacheAPP;

    .line 342
    .local v11, "app":Lcom/android/server/ipm/DexPreloader$CacheAPP;
    iget-object v12, v11, Lcom/android/server/ipm/DexPreloader$CacheAPP;->mADCPRecords:Lcom/android/server/ipm/DexPreloader$ADCPRecords;

    iput-wide v7, v12, Lcom/android/server/ipm/DexPreloader$ADCPRecords;->artSize:J

    .line 343
    iget-object v12, v11, Lcom/android/server/ipm/DexPreloader$CacheAPP;->mADCPRecords:Lcom/android/server/ipm/DexPreloader$ADCPRecords;

    const-wide/16 v13, 0x0

    cmp-long v13, v7, v13

    if-lez v13, :cond_f6

    const/4 v6, 0x1

    :cond_f6
    iput-boolean v6, v12, Lcom/android/server/ipm/DexPreloader$ADCPRecords;->succeed:Z

    .line 345
    .end local v5    # "artFile":Ljava/io/File;
    .end local v7    # "artSize":J
    .end local v9    # "abi":Ljava/lang/String;
    .end local v10    # "codePath":Ljava/lang/String;
    .end local v11    # "app":Lcom/android/server/ipm/DexPreloader$CacheAPP;
    :cond_f8
    goto :goto_118

    .line 346
    :cond_f9
    # getter for: Lcom/android/server/ipm/DexPreloader;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/ipm/DexPreloader;->access$200()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "The app: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/ipm/DexPreloader$Dex2OatTask;->pkgName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "  maybe uninstalled"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    .end local v0    # "pa":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :cond_118
    :goto_118
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 350
    return-void
.end method
