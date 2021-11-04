.class Lcom/android/server/ipm/SeedbedPreloadController$3;
.super Landroid/app/IProcessObserver$Stub;
.source "SeedbedPreloadController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ipm/SeedbedPreloadController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ipm/SeedbedPreloadController;


# direct methods
.method constructor <init>(Lcom/android/server/ipm/SeedbedPreloadController;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/ipm/SeedbedPreloadController;

    .line 225
    iput-object p1, p0, Lcom/android/server/ipm/SeedbedPreloadController$3;->this$0:Lcom/android/server/ipm/SeedbedPreloadController;

    invoke-direct {p0}, Landroid/app/IProcessObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onForegroundActivitiesChanged(IIZ)V
    .registers 7
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "foregroundActivities"    # Z

    .line 232
    if-eqz p3, :cond_9

    .line 233
    iget-object v0, p0, Lcom/android/server/ipm/SeedbedPreloadController$3;->this$0:Lcom/android/server/ipm/SeedbedPreloadController;

    const/4 v1, 0x5

    const/4 v2, 0x0

    # invokes: Lcom/android/server/ipm/SeedbedPreloadController;->sendSeedBedMessage(IIILjava/lang/Object;)V
    invoke-static {v0, v1, p1, p2, v2}, Lcom/android/server/ipm/SeedbedPreloadController;->access$000(Lcom/android/server/ipm/SeedbedPreloadController;IIILjava/lang/Object;)V

    .line 235
    :cond_9
    return-void
.end method

.method public onForegroundServicesChanged(III)V
    .registers 4
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "serviceTypes"    # I

    .line 239
    return-void
.end method

.method public onProcessDied(II)V
    .registers 3
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .line 244
    return-void
.end method
