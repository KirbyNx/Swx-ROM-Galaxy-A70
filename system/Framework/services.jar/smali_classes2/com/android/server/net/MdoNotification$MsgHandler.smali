.class Lcom/android/server/net/MdoNotification$MsgHandler;
.super Landroid/os/Handler;
.source "MdoNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/MdoNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MsgHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/MdoNotification;


# direct methods
.method constructor <init>(Lcom/android/server/net/MdoNotification;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .line 268
    iput-object p1, p0, Lcom/android/server/net/MdoNotification$MsgHandler;->this$0:Lcom/android/server/net/MdoNotification;

    .line 269
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 270
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "handleMessage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MdoNotification"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1d

    goto :goto_27

    .line 276
    :cond_1d
    const-string v0, "MSG_UPDATE_NOTIFICATION"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    iget-object v0, p0, Lcom/android/server/net/MdoNotification$MsgHandler;->this$0:Lcom/android/server/net/MdoNotification;

    # invokes: Lcom/android/server/net/MdoNotification;->update()V
    invoke-static {v0}, Lcom/android/server/net/MdoNotification;->access$300(Lcom/android/server/net/MdoNotification;)V

    .line 281
    :goto_27
    return-void
.end method
