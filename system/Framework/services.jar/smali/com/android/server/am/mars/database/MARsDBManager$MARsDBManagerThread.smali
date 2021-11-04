.class Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerThread;
.super Ljava/lang/Thread;
.source "MARsDBManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/mars/database/MARsDBManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MARsDBManagerThread"
.end annotation


# instance fields
.field mPriority:I

.field final synthetic this$0:Lcom/android/server/am/mars/database/MARsDBManager;


# direct methods
.method public constructor <init>(Lcom/android/server/am/mars/database/MARsDBManager;Ljava/lang/String;)V
    .registers 3
    .param p2, "name"    # Ljava/lang/String;

    .line 106
    iput-object p1, p0, Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerThread;->this$0:Lcom/android/server/am/mars/database/MARsDBManager;

    .line 107
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 108
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerThread;->mPriority:I

    .line 109
    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/mars/database/MARsDBManager;Ljava/lang/String;I)V
    .registers 4
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "priority"    # I

    .line 117
    iput-object p1, p0, Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerThread;->this$0:Lcom/android/server/am/mars/database/MARsDBManager;

    .line 118
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 119
    iput p3, p0, Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerThread;->mPriority:I

    .line 120
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 124
    iget v0, p0, Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerThread;->mPriority:I

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 125
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 126
    iget-object v0, p0, Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerThread;->this$0:Lcom/android/server/am/mars/database/MARsDBManager;

    new-instance v1, Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerHandler;

    iget-object v2, p0, Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerThread;->this$0:Lcom/android/server/am/mars/database/MARsDBManager;

    invoke-direct {v1, v2}, Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerHandler;-><init>(Lcom/android/server/am/mars/database/MARsDBManager;)V

    # setter for: Lcom/android/server/am/mars/database/MARsDBManager;->mMARsDBManagerHandler:Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerHandler;
    invoke-static {v0, v1}, Lcom/android/server/am/mars/database/MARsDBManager;->access$202(Lcom/android/server/am/mars/database/MARsDBManager;Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerHandler;)Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerHandler;

    .line 127
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 128
    return-void
.end method
