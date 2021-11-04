.class final Lcom/android/server/ipm/PkgPredictorService$ScreenChangeObserver;
.super Landroid/database/ContentObserver;
.source "PkgPredictorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ipm/PkgPredictorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ScreenChangeObserver"
.end annotation


# instance fields
.field private final mDiplayChangeUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/server/ipm/PkgPredictorService;


# direct methods
.method public constructor <init>(Lcom/android/server/ipm/PkgPredictorService;)V
    .registers 5

    .line 1716
    iput-object p1, p0, Lcom/android/server/ipm/PkgPredictorService$ScreenChangeObserver;->this$0:Lcom/android/server/ipm/PkgPredictorService;

    .line 1717
    # getter for: Lcom/android/server/ipm/PkgPredictorService;->mHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/android/server/ipm/PkgPredictorService;->access$500(Lcom/android/server/ipm/PkgPredictorService;)Landroid/os/Handler;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1714
    const-string v0, "display_size_forced"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ipm/PkgPredictorService$ScreenChangeObserver;->mDiplayChangeUri:Landroid/net/Uri;

    .line 1718
    # getter for: Lcom/android/server/ipm/PkgPredictorService;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/server/ipm/PkgPredictorService;->access$1800(Lcom/android/server/ipm/PkgPredictorService;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 1719
    .local p1, "resolver":Landroid/content/ContentResolver;
    iget-object v0, p0, Lcom/android/server/ipm/PkgPredictorService$ScreenChangeObserver;->mDiplayChangeUri:Landroid/net/Uri;

    const/4 v1, 0x1

    const/4 v2, -0x1

    invoke-virtual {p1, v0, v1, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1720
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 9
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 1724
    sget-boolean v0, Lcom/android/server/ipm/PkgPredictorService;->DEBUG:Z

    const-string v1, "PkgPredictorService"

    if-eqz v0, :cond_b

    const-string v0, "Changes BuB Count"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1727
    :cond_b
    :try_start_b
    iget-object v0, p0, Lcom/android/server/ipm/PkgPredictorService$ScreenChangeObserver;->this$0:Lcom/android/server/ipm/PkgPredictorService;

    invoke-virtual {v0}, Lcom/android/server/ipm/PkgPredictorService;->getCurrentResolution()Ljava/lang/String;

    move-result-object v0
    :try_end_11
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_11} :catch_8f

    .line 1728
    .local v0, "res":Ljava/lang/String;
    const-string v2, " , Before_resolution : "

    const-string v3, "After_resolution = "

    if-nez v0, :cond_37

    .line 1729
    :try_start_17
    sget-boolean v4, Lcom/android/server/ipm/PkgPredictorService;->DEBUG:Z

    if-eqz v4, :cond_37

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/ipm/PkgPredictorService$ScreenChangeObserver;->this$0:Lcom/android/server/ipm/PkgPredictorService;

    iget-object v5, v5, Lcom/android/server/ipm/PkgPredictorService;->mCurrentResolution:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1731
    :cond_37
    sget-boolean v4, Lcom/android/server/ipm/PkgPredictorService;->DEBUG:Z

    if-eqz v4, :cond_57

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/ipm/PkgPredictorService$ScreenChangeObserver;->this$0:Lcom/android/server/ipm/PkgPredictorService;

    iget-object v2, v2, Lcom/android/server/ipm/PkgPredictorService;->mCurrentResolution:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1733
    :cond_57
    iget-object v2, p0, Lcom/android/server/ipm/PkgPredictorService$ScreenChangeObserver;->this$0:Lcom/android/server/ipm/PkgPredictorService;

    iget-object v2, v2, Lcom/android/server/ipm/PkgPredictorService;->mCurrentResolution:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8e

    .line 1734
    sget-boolean v2, Lcom/android/server/ipm/PkgPredictorService;->DEBUG:Z

    if-eqz v2, :cond_79

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current Resolution = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1735
    :cond_79
    iget-object v1, p0, Lcom/android/server/ipm/PkgPredictorService$ScreenChangeObserver;->this$0:Lcom/android/server/ipm/PkgPredictorService;

    iput-object v0, v1, Lcom/android/server/ipm/PkgPredictorService;->mCurrentResolution:Ljava/lang/String;

    .line 1737
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 1738
    .local v1, "msg":Landroid/os/Message;
    const/4 v2, 0x6

    iput v2, v1, Landroid/os/Message;->what:I

    .line 1739
    iget-object v2, p0, Lcom/android/server/ipm/PkgPredictorService$ScreenChangeObserver;->this$0:Lcom/android/server/ipm/PkgPredictorService;

    # getter for: Lcom/android/server/ipm/PkgPredictorService;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/server/ipm/PkgPredictorService;->access$500(Lcom/android/server/ipm/PkgPredictorService;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_8e
    .catch Ljava/lang/NumberFormatException; {:try_start_17 .. :try_end_8e} :catch_8f

    .line 1743
    .end local v0    # "res":Ljava/lang/String;
    .end local v1    # "msg":Landroid/os/Message;
    :cond_8e
    goto :goto_93

    .line 1741
    :catch_8f
    move-exception v0

    .line 1742
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 1744
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :goto_93
    return-void
.end method
