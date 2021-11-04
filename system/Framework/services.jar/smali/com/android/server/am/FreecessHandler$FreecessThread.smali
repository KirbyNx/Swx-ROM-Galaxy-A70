.class Lcom/android/server/am/FreecessHandler$FreecessThread;
.super Ljava/lang/Thread;
.source "FreecessHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/FreecessHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FreecessThread"
.end annotation


# instance fields
.field mPriority:I

.field final synthetic this$0:Lcom/android/server/am/FreecessHandler;


# direct methods
.method public constructor <init>(Lcom/android/server/am/FreecessHandler;Ljava/lang/String;)V
    .registers 3
    .param p2, "name"    # Ljava/lang/String;

    .line 105
    iput-object p1, p0, Lcom/android/server/am/FreecessHandler$FreecessThread;->this$0:Lcom/android/server/am/FreecessHandler;

    .line 106
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 107
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/am/FreecessHandler$FreecessThread;->mPriority:I

    .line 108
    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/FreecessHandler;Ljava/lang/String;I)V
    .registers 4
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "priority"    # I

    .line 116
    iput-object p1, p0, Lcom/android/server/am/FreecessHandler$FreecessThread;->this$0:Lcom/android/server/am/FreecessHandler;

    .line 117
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 118
    iput p3, p0, Lcom/android/server/am/FreecessHandler$FreecessThread;->mPriority:I

    .line 119
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 123
    iget v0, p0, Lcom/android/server/am/FreecessHandler$FreecessThread;->mPriority:I

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 124
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 125
    iget-object v0, p0, Lcom/android/server/am/FreecessHandler$FreecessThread;->this$0:Lcom/android/server/am/FreecessHandler;

    new-instance v1, Lcom/android/server/am/FreecessHandler$MainHandler;

    iget-object v2, p0, Lcom/android/server/am/FreecessHandler$FreecessThread;->this$0:Lcom/android/server/am/FreecessHandler;

    invoke-direct {v1, v2}, Lcom/android/server/am/FreecessHandler$MainHandler;-><init>(Lcom/android/server/am/FreecessHandler;)V

    iput-object v1, v0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    .line 126
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 129
    iget-object v0, p0, Lcom/android/server/am/FreecessHandler$FreecessThread;->this$0:Lcom/android/server/am/FreecessHandler;

    invoke-virtual {v0}, Lcom/android/server/am/FreecessHandler;->sendSCPMChangedPkgMsgToDBHandler()V

    .line 130
    return-void
.end method
