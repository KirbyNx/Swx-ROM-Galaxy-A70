.class Lcom/android/server/ipm/PkgPredictorService$3;
.super Landroid/app/IProcessObserver$Stub;
.source "PkgPredictorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ipm/PkgPredictorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ipm/PkgPredictorService;


# direct methods
.method constructor <init>(Lcom/android/server/ipm/PkgPredictorService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/ipm/PkgPredictorService;

    .line 282
    iput-object p1, p0, Lcom/android/server/ipm/PkgPredictorService$3;->this$0:Lcom/android/server/ipm/PkgPredictorService;

    invoke-direct {p0}, Landroid/app/IProcessObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onForegroundActivitiesChanged(IIZ)V
    .registers 6
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "foregroundActivities"    # Z

    .line 289
    if-eqz p3, :cond_1d

    # getter for: Lcom/android/server/ipm/PkgPredictorService;->isScreenOff:Z
    invoke-static {}, Lcom/android/server/ipm/PkgPredictorService;->access$300()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 290
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 291
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 292
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 293
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 294
    iget-object v1, p0, Lcom/android/server/ipm/PkgPredictorService$3;->this$0:Lcom/android/server/ipm/PkgPredictorService;

    # getter for: Lcom/android/server/ipm/PkgPredictorService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/ipm/PkgPredictorService;->access$500(Lcom/android/server/ipm/PkgPredictorService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 296
    .end local v0    # "msg":Landroid/os/Message;
    :cond_1d
    return-void
.end method

.method public onForegroundServicesChanged(III)V
    .registers 4
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "serviceTypes"    # I

    .line 299
    return-void
.end method

.method public onProcessDied(II)V
    .registers 5
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .line 303
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 304
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 305
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 306
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 307
    iget-object v1, p0, Lcom/android/server/ipm/PkgPredictorService$3;->this$0:Lcom/android/server/ipm/PkgPredictorService;

    # getter for: Lcom/android/server/ipm/PkgPredictorService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/ipm/PkgPredictorService;->access$500(Lcom/android/server/ipm/PkgPredictorService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 308
    return-void
.end method
