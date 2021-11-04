.class public Lcom/android/server/DualAppManagerService$OpChangeListener;
.super Landroid/app/AppOpsManager$OnOpChangedInternalListener;
.source "DualAppManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DualAppManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OpChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DualAppManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/DualAppManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/DualAppManagerService;

    .line 285
    iput-object p1, p0, Lcom/android/server/DualAppManagerService$OpChangeListener;->this$0:Lcom/android/server/DualAppManagerService;

    invoke-direct {p0}, Landroid/app/AppOpsManager$OnOpChangedInternalListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onOpChanged(ILjava/lang/String;)V
    .registers 11
    .param p1, "op"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 296
    const/16 v0, 0x18

    if-ne p1, v0, :cond_5

    .line 297
    return-void

    .line 300
    :cond_5
    sget v0, Lcom/android/server/DualAppManagerService;->inOpsCallback:I

    if-eqz v0, :cond_12

    .line 301
    const-string v0, "DualAppManagerService"

    const-string/jumbo v1, "onOpChanged() is in progress"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    return-void

    .line 304
    :cond_12
    const/4 v0, 0x1

    sput v0, Lcom/android/server/DualAppManagerService;->inOpsCallback:I

    .line 306
    const/4 v0, 0x0

    :try_start_16
    # getter for: Lcom/android/server/DualAppManagerService;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/DualAppManagerService;->access$000()Landroid/content/Context;

    move-result-object v1

    const-class v2, Landroid/app/AppOpsManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    .line 308
    .local v1, "mAppOps":Landroid/app/AppOpsManager;
    # getter for: Lcom/android/server/DualAppManagerService;->mInstalledWhitelistedPkgMap:Ljava/util/HashMap;
    invoke-static {}, Lcom/android/server/DualAppManagerService;->access$300()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_2c} :catch_62
    .catchall {:try_start_16 .. :try_end_2c} :catchall_5e

    .line 311
    .local v2, "uid":Ljava/lang/Integer;
    if-nez v2, :cond_31

    .line 322
    sput v0, Lcom/android/server/DualAppManagerService;->inOpsCallback:I

    .line 312
    return-void

    .line 314
    :cond_31
    :try_start_31
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    invoke-virtual {v1, p1, v3, p2}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v3

    .line 317
    .local v3, "mode":I
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v1, p1, v4, p2, v3}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 318
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v5

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    const-string v7, "Permission related app op changed"

    invoke-interface {v4, v5, v6, v7}, Landroid/app/IActivityManager;->killUid(IILjava/lang/String;)V
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_5d} :catch_62
    .catchall {:try_start_31 .. :try_end_5d} :catchall_5e

    .end local v1    # "mAppOps":Landroid/app/AppOpsManager;
    .end local v2    # "uid":Ljava/lang/Integer;
    .end local v3    # "mode":I
    goto :goto_63

    .line 322
    :catchall_5e
    move-exception v1

    sput v0, Lcom/android/server/DualAppManagerService;->inOpsCallback:I

    .line 323
    throw v1

    .line 320
    :catch_62
    move-exception v1

    .line 322
    :goto_63
    sput v0, Lcom/android/server/DualAppManagerService;->inOpsCallback:I

    .line 323
    nop

    .line 324
    return-void
.end method

.method public onOpChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "pkgName"    # Ljava/lang/String;

    .line 290
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onOpChanged() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DualAppManagerService"

    invoke-static {v1, v0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    return-void
.end method
