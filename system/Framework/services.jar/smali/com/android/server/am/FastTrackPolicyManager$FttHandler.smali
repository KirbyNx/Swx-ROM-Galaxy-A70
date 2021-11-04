.class Lcom/android/server/am/FastTrackPolicyManager$FttHandler;
.super Landroid/os/Handler;
.source "FastTrackPolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/FastTrackPolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FttHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/FastTrackPolicyManager;


# direct methods
.method constructor <init>(Lcom/android/server/am/FastTrackPolicyManager;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .line 53
    iput-object p1, p0, Lcom/android/server/am/FastTrackPolicyManager$FttHandler;->this$0:Lcom/android/server/am/FastTrackPolicyManager;

    .line 54
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 55
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 10
    .param p1, "msg"    # Landroid/os/Message;

    .line 58
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x2711

    if-eq v0, v1, :cond_f

    .line 63
    const-string v0, "FastTrack"

    const-string/jumbo v1, "not match any case!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21

    .line 60
    :cond_f
    iget-object v2, p0, Lcom/android/server/am/FastTrackPolicyManager$FttHandler;->this$0:Lcom/android/server/am/FastTrackPolicyManager;

    iget v0, p1, Landroid/os/Message;->arg1:I

    int-to-long v3, v0

    iget v0, p1, Landroid/os/Message;->arg2:I

    int-to-long v5, v0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/FastTrackPolicyManager;->setFastTrackState(JJLjava/lang/String;)V

    .line 61
    nop

    .line 66
    :goto_21
    return-void
.end method
