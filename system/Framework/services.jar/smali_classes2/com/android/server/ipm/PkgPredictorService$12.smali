.class Lcom/android/server/ipm/PkgPredictorService$12;
.super Landroid/content/BroadcastReceiver;
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

    .line 486
    iput-object p1, p0, Lcom/android/server/ipm/PkgPredictorService$12;->this$0:Lcom/android/server/ipm/PkgPredictorService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 489
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 490
    .local v0, "action":Ljava/lang/String;
    if-eqz v0, :cond_2a

    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 491
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 492
    .local v1, "config":Landroid/content/res/Configuration;
    iget v2, v1, Landroid/content/res/Configuration;->orientation:I

    .line 493
    .local v2, "orientation":I
    const/4 v3, 0x1

    if-ne v2, v3, :cond_22

    .line 494
    iget-object v3, p0, Lcom/android/server/ipm/PkgPredictorService$12;->this$0:Lcom/android/server/ipm/PkgPredictorService;

    const/4 v4, 0x0

    # setter for: Lcom/android/server/ipm/PkgPredictorService;->mOrientation:I
    invoke-static {v3, v4}, Lcom/android/server/ipm/PkgPredictorService;->access$1702(Lcom/android/server/ipm/PkgPredictorService;I)I

    goto :goto_2a

    .line 495
    :cond_22
    const/4 v4, 0x2

    if-ne v2, v4, :cond_2a

    .line 496
    iget-object v4, p0, Lcom/android/server/ipm/PkgPredictorService$12;->this$0:Lcom/android/server/ipm/PkgPredictorService;

    # setter for: Lcom/android/server/ipm/PkgPredictorService;->mOrientation:I
    invoke-static {v4, v3}, Lcom/android/server/ipm/PkgPredictorService;->access$1702(Lcom/android/server/ipm/PkgPredictorService;I)I

    .line 499
    .end local v1    # "config":Landroid/content/res/Configuration;
    .end local v2    # "orientation":I
    :cond_2a
    :goto_2a
    return-void
.end method
