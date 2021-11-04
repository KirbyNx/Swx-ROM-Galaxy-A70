.class Lcom/android/server/power/PowerManagerLog$PowerManagerLogHandler;
.super Landroid/os/Handler;
.source "PowerManagerLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PowerManagerLogHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/PowerManagerLog;


# direct methods
.method constructor <init>(Lcom/android/server/power/PowerManagerLog;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .line 328
    iput-object p1, p0, Lcom/android/server/power/PowerManagerLog$PowerManagerLogHandler;->this$0:Lcom/android/server/power/PowerManagerLog;

    .line 329
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 330
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9
    .param p1, "msg"    # Landroid/os/Message;

    .line 334
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    goto :goto_17

    .line 336
    :cond_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/power/PowerManagerLog$LogEventValue;

    .line 337
    .local v0, "value":Lcom/android/server/power/PowerManagerLog$LogEventValue;
    iget-object v1, p0, Lcom/android/server/power/PowerManagerLog$PowerManagerLogHandler;->this$0:Lcom/android/server/power/PowerManagerLog;

    iget-byte v2, v0, Lcom/android/server/power/PowerManagerLog$LogEventValue;->tag:B

    iget-short v3, v0, Lcom/android/server/power/PowerManagerLog$LogEventValue;->tid:S

    iget-wide v4, v0, Lcom/android/server/power/PowerManagerLog$LogEventValue;->time:J

    iget-object v6, v0, Lcom/android/server/power/PowerManagerLog$LogEventValue;->args:[Ljava/lang/Object;

    # invokes: Lcom/android/server/power/PowerManagerLog;->addEntry(BSJ[Ljava/lang/Object;)V
    invoke-static/range {v1 .. v6}, Lcom/android/server/power/PowerManagerLog;->access$000(Lcom/android/server/power/PowerManagerLog;BSJ[Ljava/lang/Object;)V

    .line 340
    .end local v0    # "value":Lcom/android/server/power/PowerManagerLog$LogEventValue;
    :goto_17
    return-void
.end method
