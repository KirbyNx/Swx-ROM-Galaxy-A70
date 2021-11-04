.class Lcom/android/server/am/ActivityManagerShellCommand$3;
.super Landroid/app/UserSwitchObserver;
.source "ActivityManagerShellCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerShellCommand;->switchUserAndWaitForComplete(I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerShellCommand;

.field final synthetic val$switchLatch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerShellCommand;ILjava/util/concurrent/CountDownLatch;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/server/am/ActivityManagerShellCommand;

    .line 1799
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$3;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    iput p2, p0, Lcom/android/server/am/ActivityManagerShellCommand$3;->val$userId:I

    iput-object p3, p0, Lcom/android/server/am/ActivityManagerShellCommand$3;->val$switchLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Landroid/app/UserSwitchObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserSwitchComplete(I)V
    .registers 3
    .param p1, "newUserId"    # I

    .line 1802
    iget v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$3;->val$userId:I

    if-ne v0, p1, :cond_9

    .line 1803
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$3;->val$switchLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1805
    :cond_9
    return-void
.end method
