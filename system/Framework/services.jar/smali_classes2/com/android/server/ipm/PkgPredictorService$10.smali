.class Lcom/android/server/ipm/PkgPredictorService$10;
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

    .line 456
    iput-object p1, p0, Lcom/android/server/ipm/PkgPredictorService$10;->this$0:Lcom/android/server/ipm/PkgPredictorService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 459
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 460
    .local v0, "action":Ljava/lang/String;
    if-eqz v0, :cond_2b

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 461
    const/4 v1, -0x1

    const-string v2, "android.bluetooth.adapter.extra.STATE"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 462
    .local v1, "state":I
    const/16 v2, 0xa

    if-eq v1, v2, :cond_25

    const/16 v2, 0xd

    if-ne v1, v2, :cond_1e

    goto :goto_25

    .line 465
    :cond_1e
    iget-object v2, p0, Lcom/android/server/ipm/PkgPredictorService$10;->this$0:Lcom/android/server/ipm/PkgPredictorService;

    const/4 v3, 0x1

    # setter for: Lcom/android/server/ipm/PkgPredictorService;->mBtState:I
    invoke-static {v2, v3}, Lcom/android/server/ipm/PkgPredictorService;->access$1502(Lcom/android/server/ipm/PkgPredictorService;I)I

    goto :goto_2b

    .line 463
    :cond_25
    :goto_25
    iget-object v2, p0, Lcom/android/server/ipm/PkgPredictorService$10;->this$0:Lcom/android/server/ipm/PkgPredictorService;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/ipm/PkgPredictorService;->mBtState:I
    invoke-static {v2, v3}, Lcom/android/server/ipm/PkgPredictorService;->access$1502(Lcom/android/server/ipm/PkgPredictorService;I)I

    .line 468
    .end local v1    # "state":I
    :cond_2b
    :goto_2b
    return-void
.end method
