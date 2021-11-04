.class final Lcom/android/server/wm/AppContinuityGuideConfirmation$H;
.super Landroid/os/Handler;
.source "AppContinuityGuideConfirmation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/AppContinuityGuideConfirmation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# static fields
.field private static final HIDE:I = 0x2

.field private static final SHOW:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/AppContinuityGuideConfirmation;


# direct methods
.method constructor <init>(Lcom/android/server/wm/AppContinuityGuideConfirmation;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .line 496
    iput-object p1, p0, Lcom/android/server/wm/AppContinuityGuideConfirmation$H;->this$0:Lcom/android/server/wm/AppContinuityGuideConfirmation;

    .line 497
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 498
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 502
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_f

    const/4 v1, 0x2

    if-eq v0, v1, :cond_9

    goto :goto_1f

    .line 507
    :cond_9
    iget-object v0, p0, Lcom/android/server/wm/AppContinuityGuideConfirmation$H;->this$0:Lcom/android/server/wm/AppContinuityGuideConfirmation;

    # invokes: Lcom/android/server/wm/AppContinuityGuideConfirmation;->handleHide()V
    invoke-static {v0}, Lcom/android/server/wm/AppContinuityGuideConfirmation;->access$800(Lcom/android/server/wm/AppContinuityGuideConfirmation;)V

    goto :goto_1f

    .line 504
    :cond_f
    iget-object v0, p0, Lcom/android/server/wm/AppContinuityGuideConfirmation$H;->this$0:Lcom/android/server/wm/AppContinuityGuideConfirmation;

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-ne v2, v1, :cond_16

    goto :goto_17

    :cond_16
    const/4 v1, 0x0

    :goto_17
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/wm/Task;

    # invokes: Lcom/android/server/wm/AppContinuityGuideConfirmation;->handleShow(ZLcom/android/server/wm/Task;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/wm/AppContinuityGuideConfirmation;->access$700(Lcom/android/server/wm/AppContinuityGuideConfirmation;ZLcom/android/server/wm/Task;)V

    .line 505
    nop

    .line 510
    :goto_1f
    return-void
.end method
