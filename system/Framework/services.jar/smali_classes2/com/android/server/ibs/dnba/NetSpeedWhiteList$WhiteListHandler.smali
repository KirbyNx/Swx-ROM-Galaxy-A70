.class public Lcom/android/server/ibs/dnba/NetSpeedWhiteList$WhiteListHandler;
.super Landroid/os/Handler;
.source "NetSpeedWhiteList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ibs/dnba/NetSpeedWhiteList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WhiteListHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ibs/dnba/NetSpeedWhiteList;


# direct methods
.method public constructor <init>(Lcom/android/server/ibs/dnba/NetSpeedWhiteList;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/ibs/dnba/NetSpeedWhiteList;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 218
    iput-object p1, p0, Lcom/android/server/ibs/dnba/NetSpeedWhiteList$WhiteListHandler;->this$0:Lcom/android/server/ibs/dnba/NetSpeedWhiteList;

    .line 219
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 220
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 224
    iget-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedWhiteList$WhiteListHandler;->this$0:Lcom/android/server/ibs/dnba/NetSpeedWhiteList;

    # getter for: Lcom/android/server/ibs/dnba/NetSpeedWhiteList;->mUtil:Lcom/android/server/ibs/dnba/NetSpeedUtil;
    invoke-static {v0}, Lcom/android/server/ibs/dnba/NetSpeedWhiteList;->access$200(Lcom/android/server/ibs/dnba/NetSpeedWhiteList;)Lcom/android/server/ibs/dnba/NetSpeedUtil;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MSG = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NetSpeedWhiteList"

    invoke-virtual {v0, v2, v1}, Lcom/android/server/ibs/dnba/NetSpeedUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x14

    if-eq v0, v1, :cond_25

    goto :goto_34

    .line 227
    :cond_25
    iget-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedWhiteList$WhiteListHandler;->this$0:Lcom/android/server/ibs/dnba/NetSpeedWhiteList;

    invoke-virtual {v0}, Lcom/android/server/ibs/dnba/NetSpeedWhiteList;->updateSCPMParametersFromDB()V

    .line 228
    iget-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedWhiteList$WhiteListHandler;->this$0:Lcom/android/server/ibs/dnba/NetSpeedWhiteList;

    # getter for: Lcom/android/server/ibs/dnba/NetSpeedWhiteList;->mMonitor:Lcom/android/server/ibs/dnba/NetSpeedMonitor;
    invoke-static {v0}, Lcom/android/server/ibs/dnba/NetSpeedWhiteList;->access$300(Lcom/android/server/ibs/dnba/NetSpeedWhiteList;)Lcom/android/server/ibs/dnba/NetSpeedMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/ibs/dnba/NetSpeedMonitor;->onWhiteListChange()V

    .line 229
    nop

    .line 233
    :goto_34
    return-void
.end method
