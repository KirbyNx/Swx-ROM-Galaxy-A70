.class Lcom/android/server/am/mars/database/MARsDBHandler$DBThread;
.super Ljava/lang/Thread;
.source "MARsDBHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/mars/database/MARsDBHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DBThread"
.end annotation


# instance fields
.field mPriority:I

.field final synthetic this$0:Lcom/android/server/am/mars/database/MARsDBHandler;


# direct methods
.method public constructor <init>(Lcom/android/server/am/mars/database/MARsDBHandler;Ljava/lang/String;)V
    .registers 3
    .param p2, "name"    # Ljava/lang/String;

    .line 52
    iput-object p1, p0, Lcom/android/server/am/mars/database/MARsDBHandler$DBThread;->this$0:Lcom/android/server/am/mars/database/MARsDBHandler;

    .line 53
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 54
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/am/mars/database/MARsDBHandler$DBThread;->mPriority:I

    .line 55
    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/mars/database/MARsDBHandler;Ljava/lang/String;I)V
    .registers 4
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "priority"    # I

    .line 63
    iput-object p1, p0, Lcom/android/server/am/mars/database/MARsDBHandler$DBThread;->this$0:Lcom/android/server/am/mars/database/MARsDBHandler;

    .line 64
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 65
    iput p3, p0, Lcom/android/server/am/mars/database/MARsDBHandler$DBThread;->mPriority:I

    .line 66
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 70
    iget v0, p0, Lcom/android/server/am/mars/database/MARsDBHandler$DBThread;->mPriority:I

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 71
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 72
    iget-object v0, p0, Lcom/android/server/am/mars/database/MARsDBHandler$DBThread;->this$0:Lcom/android/server/am/mars/database/MARsDBHandler;

    new-instance v1, Lcom/android/server/am/mars/database/MARsDBHandler$MainHandler;

    iget-object v2, p0, Lcom/android/server/am/mars/database/MARsDBHandler$DBThread;->this$0:Lcom/android/server/am/mars/database/MARsDBHandler;

    invoke-direct {v1, v2}, Lcom/android/server/am/mars/database/MARsDBHandler$MainHandler;-><init>(Lcom/android/server/am/mars/database/MARsDBHandler;)V

    iput-object v1, v0, Lcom/android/server/am/mars/database/MARsDBHandler;->mMainHandler:Lcom/android/server/am/mars/database/MARsDBHandler$MainHandler;

    .line 73
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 74
    return-void
.end method
