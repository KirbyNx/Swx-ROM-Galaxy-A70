.class Lcom/android/server/om/OverlayManagerServiceImpl$ReapplyDisableObserver;
.super Landroid/content/om/ISamsungOverlayCallback$Stub;
.source "OverlayManagerServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/om/OverlayManagerServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReapplyDisableObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/om/OverlayManagerServiceImpl;


# direct methods
.method private constructor <init>(Lcom/android/server/om/OverlayManagerServiceImpl;)V
    .registers 2

    .line 1293
    iput-object p1, p0, Lcom/android/server/om/OverlayManagerServiceImpl$ReapplyDisableObserver;->this$0:Lcom/android/server/om/OverlayManagerServiceImpl;

    invoke-direct {p0}, Landroid/content/om/ISamsungOverlayCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/om/OverlayManagerServiceImpl;Lcom/android/server/om/OverlayManagerServiceImpl$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/om/OverlayManagerServiceImpl;
    .param p2, "x1"    # Lcom/android/server/om/OverlayManagerServiceImpl$1;

    .line 1293
    invoke-direct {p0, p1}, Lcom/android/server/om/OverlayManagerServiceImpl$ReapplyDisableObserver;-><init>(Lcom/android/server/om/OverlayManagerServiceImpl;)V

    return-void
.end method


# virtual methods
.method public overlayStateChanged(Ljava/lang/String;Z)V
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .line 1296
    sget-boolean v0, Lcom/android/server/om/OverlayManagerService;->DEBUG:Z

    if-eqz v0, :cond_31

    .line 1297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "overlayStateChanged packageName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", enabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mDisablePackageCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/om/OverlayManagerServiceImpl$ReapplyDisableObserver;->this$0:Lcom/android/server/om/OverlayManagerServiceImpl;

    .line 1298
    # getter for: Lcom/android/server/om/OverlayManagerServiceImpl;->mDisablePackageCount:I
    invoke-static {v1}, Lcom/android/server/om/OverlayManagerServiceImpl;->access$200(Lcom/android/server/om/OverlayManagerServiceImpl;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1297
    const-string v1, "OverlayManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1300
    :cond_31
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl$ReapplyDisableObserver;->this$0:Lcom/android/server/om/OverlayManagerServiceImpl;

    # operator-- for: Lcom/android/server/om/OverlayManagerServiceImpl;->mDisablePackageCount:I
    invoke-static {v0}, Lcom/android/server/om/OverlayManagerServiceImpl;->access$210(Lcom/android/server/om/OverlayManagerServiceImpl;)I

    .line 1301
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl$ReapplyDisableObserver;->this$0:Lcom/android/server/om/OverlayManagerServiceImpl;

    # getter for: Lcom/android/server/om/OverlayManagerServiceImpl;->mDisablePackageCount:I
    invoke-static {v0}, Lcom/android/server/om/OverlayManagerServiceImpl;->access$200(Lcom/android/server/om/OverlayManagerServiceImpl;)I

    move-result v0

    if-nez v0, :cond_78

    .line 1302
    const-string v0, "/data/overlays/currentstyle"

    invoke-static {v0}, Lcom/android/server/om/SemSamsungThemeUtils;->deleteAllFilesInDir(Ljava/lang/String;)V

    .line 1304
    const-string v1, "/data/overlays/currentstyle/reapply"

    invoke-static {v1, v0}, Lcom/android/server/om/SemSamsungThemeUtils;->moveFiles(Ljava/lang/String;Ljava/lang/String;)V

    .line 1306
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1307
    .local v3, "currentStyleDir":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 1308
    new-instance v7, Lcom/android/server/om/OverlayManagerServiceImpl$OverlayManagerCallback;

    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl$ReapplyDisableObserver;->this$0:Lcom/android/server/om/OverlayManagerServiceImpl;

    iget-object v1, v0, Lcom/android/server/om/OverlayManagerServiceImpl;->mReapplyCallback:Landroid/content/om/ISamsungOverlayCallback;

    invoke-direct {v7, v0, v1}, Lcom/android/server/om/OverlayManagerServiceImpl$OverlayManagerCallback;-><init>(Lcom/android/server/om/OverlayManagerServiceImpl;Landroid/content/om/ISamsungOverlayCallback;)V

    .line 1310
    .local v7, "overlayManagerCallback":Lcom/android/server/om/OverlayManagerServiceImpl$OverlayManagerCallback;
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl$ReapplyDisableObserver;->this$0:Lcom/android/server/om/OverlayManagerServiceImpl;

    # getter for: Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/PackageManagerHelper;
    invoke-static {v0}, Lcom/android/server/om/OverlayManagerServiceImpl;->access$400(Lcom/android/server/om/OverlayManagerServiceImpl;)Lcom/android/server/om/PackageManagerHelper;

    move-result-object v2

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl$ReapplyDisableObserver;->this$0:Lcom/android/server/om/OverlayManagerServiceImpl;

    .line 1312
    # getter for: Lcom/android/server/om/OverlayManagerServiceImpl;->mEnablePackageNamesList:Ljava/util/List;
    invoke-static {v0}, Lcom/android/server/om/OverlayManagerServiceImpl;->access$300(Lcom/android/server/om/OverlayManagerServiceImpl;)Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x0

    .line 1310
    invoke-interface/range {v2 .. v7}, Lcom/android/server/om/PackageManagerHelper;->parseSamsungThemeOverlayPackages(Ljava/io/File;Ljava/util/List;Ljava/util/List;ILandroid/content/pm/PackageManagerInternal$OverlayManagerCallback;)V

    .line 1314
    .end local v7    # "overlayManagerCallback":Lcom/android/server/om/OverlayManagerServiceImpl$OverlayManagerCallback;
    :cond_6d
    new-instance v0, Lcom/android/server/om/OverlayManagerServiceImpl$FakeDisableProgressThread;

    iget-object v1, p0, Lcom/android/server/om/OverlayManagerServiceImpl$ReapplyDisableObserver;->this$0:Lcom/android/server/om/OverlayManagerServiceImpl;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/om/OverlayManagerServiceImpl$FakeDisableProgressThread;-><init>(Lcom/android/server/om/OverlayManagerServiceImpl;Lcom/android/server/om/OverlayManagerServiceImpl$1;)V

    .line 1315
    .local v0, "newThread":Lcom/android/server/om/OverlayManagerServiceImpl$FakeDisableProgressThread;
    invoke-virtual {v0}, Lcom/android/server/om/OverlayManagerServiceImpl$FakeDisableProgressThread;->start()V

    .line 1317
    .end local v0    # "newThread":Lcom/android/server/om/OverlayManagerServiceImpl$FakeDisableProgressThread;
    .end local v3    # "currentStyleDir":Ljava/io/File;
    :cond_78
    return-void
.end method
