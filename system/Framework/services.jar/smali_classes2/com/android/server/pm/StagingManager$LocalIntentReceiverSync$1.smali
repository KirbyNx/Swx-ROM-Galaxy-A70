.class Lcom/android/server/pm/StagingManager$LocalIntentReceiverSync$1;
.super Landroid/content/IIntentSender$Stub;
.source "StagingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/StagingManager$LocalIntentReceiverSync;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/StagingManager$LocalIntentReceiverSync;


# direct methods
.method constructor <init>(Lcom/android/server/pm/StagingManager$LocalIntentReceiverSync;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/pm/StagingManager$LocalIntentReceiverSync;

    .line 1266
    iput-object p1, p0, Lcom/android/server/pm/StagingManager$LocalIntentReceiverSync$1;->this$0:Lcom/android/server/pm/StagingManager$LocalIntentReceiverSync;

    invoke-direct {p0}, Landroid/content/IIntentSender$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public send(ILandroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 12
    .param p1, "code"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resolvedType"    # Ljava/lang/String;
    .param p4, "whitelistToken"    # Landroid/os/IBinder;
    .param p5, "finishedReceiver"    # Landroid/content/IIntentReceiver;
    .param p6, "requiredPermission"    # Ljava/lang/String;
    .param p7, "options"    # Landroid/os/Bundle;

    .line 1272
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/StagingManager$LocalIntentReceiverSync$1;->this$0:Lcom/android/server/pm/StagingManager$LocalIntentReceiverSync;

    # getter for: Lcom/android/server/pm/StagingManager$LocalIntentReceiverSync;->mResult:Ljava/util/concurrent/LinkedBlockingQueue;
    invoke-static {v0}, Lcom/android/server/pm/StagingManager$LocalIntentReceiverSync;->access$600(Lcom/android/server/pm/StagingManager$LocalIntentReceiverSync;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v0

    const-wide/16 v1, 0x5

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p2, v1, v2, v3}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z
    :try_end_d
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_d} :catch_f

    .line 1275
    nop

    .line 1276
    return-void

    .line 1273
    :catch_f
    move-exception v0

    .line 1274
    .local v0, "e":Ljava/lang/InterruptedException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
