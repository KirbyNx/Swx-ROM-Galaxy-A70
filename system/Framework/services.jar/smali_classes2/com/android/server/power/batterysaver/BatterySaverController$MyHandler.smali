.class Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;
.super Landroid/os/Handler;
.source "BatterySaverController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/batterysaver/BatterySaverController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# static fields
.field private static final ARG_DONT_SEND_BROADCAST:I = 0x0

.field private static final ARG_SEND_BROADCAST:I = 0x1

.field private static final MSG_STATE_CHANGED:I = 0x1

.field private static final MSG_SYSTEM_READY:I = 0x2


# instance fields
.field final synthetic this$0:Lcom/android/server/power/batterysaver/BatterySaverController;


# direct methods
.method public constructor <init>(Lcom/android/server/power/batterysaver/BatterySaverController;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .line 288
    iput-object p1, p0, Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;->this$0:Lcom/android/server/power/batterysaver/BatterySaverController;

    .line 289
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 290
    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .registers 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 303
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1d

    const/4 v2, 0x2

    if-eq v0, v2, :cond_a

    goto :goto_2a

    .line 311
    :cond_a
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;->this$0:Lcom/android/server/power/batterysaver/BatterySaverController;

    # getter for: Lcom/android/server/power/batterysaver/BatterySaverController;->mPlugins:[Lcom/android/server/power/batterysaver/BatterySaverController$Plugin;
    invoke-static {v0}, Lcom/android/server/power/batterysaver/BatterySaverController;->access$500(Lcom/android/server/power/batterysaver/BatterySaverController;)[Lcom/android/server/power/batterysaver/BatterySaverController$Plugin;

    move-result-object v0

    array-length v2, v0

    :goto_11
    if-ge v1, v2, :cond_2a

    aget-object v3, v0, v1

    .line 312
    .local v3, "p":Lcom/android/server/power/batterysaver/BatterySaverController$Plugin;
    iget-object v4, p0, Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;->this$0:Lcom/android/server/power/batterysaver/BatterySaverController;

    invoke-interface {v3, v4}, Lcom/android/server/power/batterysaver/BatterySaverController$Plugin;->onSystemReady(Lcom/android/server/power/batterysaver/BatterySaverController;)V

    .line 311
    .end local v3    # "p":Lcom/android/server/power/batterysaver/BatterySaverController$Plugin;
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 305
    :cond_1d
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;->this$0:Lcom/android/server/power/batterysaver/BatterySaverController;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v2, :cond_24

    move v1, v2

    :cond_24
    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/power/batterysaver/BatterySaverController;->handleBatterySaverStateChanged(ZI)V

    .line 308
    nop

    .line 316
    :cond_2a
    :goto_2a
    return-void
.end method

.method postStateChanged(ZI)V
    .registers 5
    .param p1, "sendBroadcast"    # Z
    .param p2, "reason"    # I

    .line 293
    const/4 v0, 0x1

    if-eqz p1, :cond_5

    .line 294
    move v1, v0

    goto :goto_6

    :cond_5
    const/4 v1, 0x0

    .line 293
    :goto_6
    invoke-virtual {p0, v0, v1, p2}, Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 294
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 295
    return-void
.end method

.method public postSystemReady()V
    .registers 3

    .line 298
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 299
    return-void
.end method
