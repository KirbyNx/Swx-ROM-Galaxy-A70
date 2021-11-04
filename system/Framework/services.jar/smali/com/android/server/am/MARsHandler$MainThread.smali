.class Lcom/android/server/am/MARsHandler$MainThread;
.super Ljava/lang/Thread;
.source "MARsHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/MARsHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainThread"
.end annotation


# instance fields
.field mPriority:I

.field final synthetic this$0:Lcom/android/server/am/MARsHandler;


# direct methods
.method public constructor <init>(Lcom/android/server/am/MARsHandler;Ljava/lang/String;)V
    .registers 3
    .param p2, "name"    # Ljava/lang/String;

    .line 85
    iput-object p1, p0, Lcom/android/server/am/MARsHandler$MainThread;->this$0:Lcom/android/server/am/MARsHandler;

    .line 86
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 87
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/am/MARsHandler$MainThread;->mPriority:I

    .line 88
    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/MARsHandler;Ljava/lang/String;I)V
    .registers 4
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "priority"    # I

    .line 96
    iput-object p1, p0, Lcom/android/server/am/MARsHandler$MainThread;->this$0:Lcom/android/server/am/MARsHandler;

    .line 97
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 98
    iput p3, p0, Lcom/android/server/am/MARsHandler$MainThread;->mPriority:I

    .line 99
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 103
    iget v0, p0, Lcom/android/server/am/MARsHandler$MainThread;->mPriority:I

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 104
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 105
    iget-object v0, p0, Lcom/android/server/am/MARsHandler$MainThread;->this$0:Lcom/android/server/am/MARsHandler;

    new-instance v1, Lcom/android/server/am/MARsHandler$MainHandler;

    iget-object v2, p0, Lcom/android/server/am/MARsHandler$MainThread;->this$0:Lcom/android/server/am/MARsHandler;

    invoke-direct {v1, v2}, Lcom/android/server/am/MARsHandler$MainHandler;-><init>(Lcom/android/server/am/MARsHandler;)V

    iput-object v1, v0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    .line 106
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 107
    return-void
.end method
