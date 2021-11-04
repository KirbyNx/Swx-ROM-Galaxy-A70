.class Lcom/android/server/ipm/SeedbedSCPMUtil$SdbdHandler;
.super Landroid/os/Handler;
.source "SeedbedSCPMUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ipm/SeedbedSCPMUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SdbdHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ipm/SeedbedSCPMUtil;


# direct methods
.method public constructor <init>(Lcom/android/server/ipm/SeedbedSCPMUtil;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .line 61
    iput-object p1, p0, Lcom/android/server/ipm/SeedbedSCPMUtil$SdbdHandler;->this$0:Lcom/android/server/ipm/SeedbedSCPMUtil;

    .line 62
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 63
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 67
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x63

    if-eq v0, v1, :cond_7

    goto :goto_d

    .line 69
    :cond_7
    iget-object v0, p0, Lcom/android/server/ipm/SeedbedSCPMUtil$SdbdHandler;->this$0:Lcom/android/server/ipm/SeedbedSCPMUtil;

    invoke-virtual {v0}, Lcom/android/server/ipm/SeedbedSCPMUtil;->updateSCPMParametersFromDB()V

    .line 70
    nop

    .line 74
    :goto_d
    return-void
.end method
