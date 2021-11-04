.class Lcom/android/server/soundtrigger/SoundTriggerHelper$1;
.super Landroid/os/Handler;
.source "SoundTriggerHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/soundtrigger/SoundTriggerHelper;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/soundtrigger/SoundTriggerHelper;


# direct methods
.method constructor <init>(Lcom/android/server/soundtrigger/SoundTriggerHelper;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/soundtrigger/SoundTriggerHelper;
    .param p2, "arg0"    # Landroid/os/Looper;

    .line 149
    iput-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$1;->this$0:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 152
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_1e

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown message in handler:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SoundTriggerHelper"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_34

    .line 154
    :cond_1e
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$1;->this$0:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    # getter for: Lcom/android/server/soundtrigger/SoundTriggerHelper;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->access$000(Lcom/android/server/soundtrigger/SoundTriggerHelper;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 155
    :try_start_25
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$1;->this$0:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    const/4 v2, 0x2

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v2, v3, :cond_2e

    const/4 v2, 0x1

    goto :goto_2f

    :cond_2e
    const/4 v2, 0x0

    :goto_2f
    # invokes: Lcom/android/server/soundtrigger/SoundTriggerHelper;->onCallStateChangedLocked(Z)V
    invoke-static {v1, v2}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->access$100(Lcom/android/server/soundtrigger/SoundTriggerHelper;Z)V

    .line 157
    monitor-exit v0

    .line 158
    nop

    .line 163
    :goto_34
    return-void

    .line 157
    :catchall_35
    move-exception v1

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_25 .. :try_end_37} :catchall_35

    throw v1
.end method
