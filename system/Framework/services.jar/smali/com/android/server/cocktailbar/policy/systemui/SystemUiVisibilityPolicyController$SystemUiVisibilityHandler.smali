.class final Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController$SystemUiVisibilityHandler;
.super Landroid/os/Handler;
.source "SystemUiVisibilityPolicyController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SystemUiVisibilityHandler"
.end annotation


# static fields
.field private static final MSG_SYSTEMUI_VISIBILITY_CHANGED:I = 0x1

.field private static final MSG_SYSTEMUI_VISIBILITY_NOTIFY_TO_BINDER:I = 0x2

.field private static final MSG_THREAD_EXPIRED:I = 0x65


# instance fields
.field final synthetic this$0:Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;


# direct methods
.method constructor <init>(Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .line 244
    iput-object p1, p0, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController$SystemUiVisibilityHandler;->this$0:Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;

    .line 245
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 246
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 250
    # getter for: Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleMessage: entry what = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3a

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2e

    const/16 v1, 0x65

    if-eq v0, v1, :cond_28

    goto :goto_42

    .line 259
    :cond_28
    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController$SystemUiVisibilityHandler;->this$0:Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;

    # invokes: Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;->quitHandlerThread()V
    invoke-static {v0}, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;->access$300(Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;)V

    .line 260
    goto :goto_42

    .line 256
    :cond_2e
    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController$SystemUiVisibilityHandler;->this$0:Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/IBinder;

    iget v2, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;->notifySystemUiVisibilityToBinder(Landroid/os/IBinder;I)Z
    invoke-static {v0, v1, v2}, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;->access$200(Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;Landroid/os/IBinder;I)Z

    .line 257
    goto :goto_42

    .line 253
    :cond_3a
    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController$SystemUiVisibilityHandler;->this$0:Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;

    iget v1, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;->handleUpdateVisibility(I)V
    invoke-static {v0, v1}, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;->access$100(Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;I)V

    .line 254
    nop

    .line 264
    :goto_42
    return-void
.end method
