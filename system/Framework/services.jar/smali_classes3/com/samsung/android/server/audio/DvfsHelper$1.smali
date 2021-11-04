.class Lcom/samsung/android/server/audio/DvfsHelper$1;
.super Landroid/os/Handler;
.source "DvfsHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/audio/DvfsHelper;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/audio/DvfsHelper;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/audio/DvfsHelper;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"    # Lcom/samsung/android/server/audio/DvfsHelper;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 53
    iput-object p1, p0, Lcom/samsung/android/server/audio/DvfsHelper$1;->this$0:Lcom/samsung/android/server/audio/DvfsHelper;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 56
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_9

    .line 65
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_1d

    .line 58
    :cond_9
    iget-object v0, p0, Lcom/samsung/android/server/audio/DvfsHelper$1;->this$0:Lcom/samsung/android/server/audio/DvfsHelper;

    # getter for: Lcom/samsung/android/server/audio/DvfsHelper;->mIsCPUBoostedForVoIP:Z
    invoke-static {v0}, Lcom/samsung/android/server/audio/DvfsHelper;->access$000(Lcom/samsung/android/server/audio/DvfsHelper;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 59
    iget-object v0, p0, Lcom/samsung/android/server/audio/DvfsHelper$1;->this$0:Lcom/samsung/android/server/audio/DvfsHelper;

    invoke-virtual {v0}, Lcom/samsung/android/server/audio/DvfsHelper;->acquireCPUBoost()V

    goto :goto_1d

    .line 61
    :cond_17
    iget-object v0, p0, Lcom/samsung/android/server/audio/DvfsHelper$1;->this$0:Lcom/samsung/android/server/audio/DvfsHelper;

    invoke-virtual {v0}, Lcom/samsung/android/server/audio/DvfsHelper;->releaseCPUBoost()V

    .line 63
    nop

    .line 67
    :goto_1d
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 68
    return-void
.end method
