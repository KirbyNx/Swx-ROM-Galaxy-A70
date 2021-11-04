.class final Lcom/android/server/wm/MultiStarController$H;
.super Landroid/os/Handler;
.source "MultiStarController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/MultiStarController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "H"
.end annotation


# static fields
.field private static final SHOW_ENABLE_FOR_KEY_TOAST:I


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/MultiStarController;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/MultiStarController;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/wm/MultiStarController;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 571
    iput-object p1, p0, Lcom/android/server/wm/MultiStarController$H;->this$0:Lcom/android/server/wm/MultiStarController;

    .line 572
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 573
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9
    .param p1, "msg"    # Landroid/os/Message;

    .line 577
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_5

    goto :goto_3b

    .line 579
    :cond_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 580
    .local v0, "key":Ljava/lang/String;
    iget v1, p1, Landroid/os/Message;->arg1:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_10

    goto :goto_11

    :cond_10
    move v3, v2

    :goto_11
    move v1, v3

    .line 582
    .local v1, "enabled":Z
    iget-object v3, p0, Lcom/android/server/wm/MultiStarController$H;->this$0:Lcom/android/server/wm/MultiStarController;

    # getter for: Lcom/android/server/wm/MultiStarController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;
    invoke-static {v3}, Lcom/android/server/wm/MultiStarController;->access$000(Lcom/android/server/wm/MultiStarController;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 583
    if-eqz v1, :cond_2b

    const-string v6, " disabled."

    goto :goto_2d

    :cond_2b
    const-string v6, " enabled."

    :goto_2d
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 582
    invoke-static {v3, v4, v5, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 584
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 588
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "enabled":Z
    :goto_3b
    return-void
.end method
