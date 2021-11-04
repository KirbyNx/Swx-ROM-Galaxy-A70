.class Lcom/android/server/om/OverlayManagerServiceImpl$FakeDisableProgressThread;
.super Ljava/lang/Thread;
.source "OverlayManagerServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/om/OverlayManagerServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FakeDisableProgressThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/om/OverlayManagerServiceImpl;


# direct methods
.method private constructor <init>(Lcom/android/server/om/OverlayManagerServiceImpl;)V
    .registers 2

    .line 1273
    iput-object p1, p0, Lcom/android/server/om/OverlayManagerServiceImpl$FakeDisableProgressThread;->this$0:Lcom/android/server/om/OverlayManagerServiceImpl;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/om/OverlayManagerServiceImpl;Lcom/android/server/om/OverlayManagerServiceImpl$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/om/OverlayManagerServiceImpl;
    .param p2, "x1"    # Lcom/android/server/om/OverlayManagerServiceImpl$1;

    .line 1273
    invoke-direct {p0, p1}, Lcom/android/server/om/OverlayManagerServiceImpl$FakeDisableProgressThread;-><init>(Lcom/android/server/om/OverlayManagerServiceImpl;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1276
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 1277
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl$FakeDisableProgressThread;->this$0:Lcom/android/server/om/OverlayManagerServiceImpl;

    # getter for: Lcom/android/server/om/OverlayManagerServiceImpl;->mDisablePackageNamesList:Ljava/util/List;
    invoke-static {v0}, Lcom/android/server/om/OverlayManagerServiceImpl;->access$100(Lcom/android/server/om/OverlayManagerServiceImpl;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1278
    .local v1, "packageName":Ljava/lang/String;
    sget-boolean v2, Lcom/android/server/om/OverlayManagerService;->DEBUG:Z

    if-eqz v2, :cond_33

    .line 1279
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[FakeDisableProgressThread] packageName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OverlayManager"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1282
    :cond_33
    :try_start_33
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerServiceImpl$FakeDisableProgressThread;->this$0:Lcom/android/server/om/OverlayManagerServiceImpl;

    iget-object v2, v2, Lcom/android/server/om/OverlayManagerServiceImpl;->mReapplyCallback:Landroid/content/om/ISamsungOverlayCallback;

    if-eqz v2, :cond_41

    .line 1283
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerServiceImpl$FakeDisableProgressThread;->this$0:Lcom/android/server/om/OverlayManagerServiceImpl;

    iget-object v2, v2, Lcom/android/server/om/OverlayManagerServiceImpl;->mReapplyCallback:Landroid/content/om/ISamsungOverlayCallback;

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/content/om/ISamsungOverlayCallback;->overlayStateChanged(Ljava/lang/String;Z)V

    .line 1285
    :cond_41
    const-wide/16 v2, 0x32

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_46} :catch_47

    .line 1288
    goto :goto_4b

    .line 1286
    :catch_47
    move-exception v2

    .line 1287
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1289
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_4b
    goto :goto_d

    .line 1290
    :cond_4c
    return-void
.end method
