.class Lcom/android/server/pm/PackageManagerService$PendingVerifierReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PendingVerifierReceiver"
.end annotation


# instance fields
.field private mState:Lcom/android/server/pm/PackageVerificationState;

.field private mSufficientVerifierTimeout:Z

.field private mUid:I

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageVerificationState;IZ)V
    .registers 5
    .param p2, "state"    # Lcom/android/server/pm/PackageVerificationState;
    .param p3, "uid"    # I
    .param p4, "sufficientVerifierTimeout"    # Z

    .line 18309
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$PendingVerifierReceiver;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 18310
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$PendingVerifierReceiver;->mState:Lcom/android/server/pm/PackageVerificationState;

    .line 18311
    iput p3, p0, Lcom/android/server/pm/PackageManagerService$PendingVerifierReceiver;->mUid:I

    .line 18312
    iput-boolean p4, p0, Lcom/android/server/pm/PackageManagerService$PendingVerifierReceiver;->mSufficientVerifierTimeout:Z

    .line 18313
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 18317
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onReceive for RequiredVerifier id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PendingVerifierReceiver;->mState:Lcom/android/server/pm/PackageVerificationState;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageVerificationState;->getVerificationId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",mUid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/pm/PackageManagerService$PendingVerifierReceiver;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VERIFY"

    invoke-static {v1, v0}, Lcom/android/server/pm/PackageManagerService;->logFormat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "PackageManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18318
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PendingVerifierReceiver;->mState:Lcom/android/server/pm/PackageVerificationState;

    monitor-enter v0

    .line 18319
    :try_start_30
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PendingVerifierReceiver;->mState:Lcom/android/server/pm/PackageVerificationState;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageVerificationState;->getInstallParams()Lcom/android/server/pm/PackageManagerService$InstallParams;

    move-result-object v1

    .line 18320
    .local v1, "params":Lcom/android/server/pm/PackageManagerService$InstallParams;
    # getter for: Lcom/android/server/pm/PackageManagerService$InstallParams;->mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;
    invoke-static {v1}, Lcom/android/server/pm/PackageManagerService$InstallParams;->access$800(Lcom/android/server/pm/PackageManagerService$InstallParams;)Lcom/android/server/pm/PackageManagerService$InstallArgs;

    move-result-object v2

    .line 18321
    .local v2, "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    new-instance v3, Lcom/android/server/pm/PackageVerificationResponse;

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$PendingVerifierReceiver;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 18322
    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->getUser()Landroid/os/UserHandle;

    move-result-object v5

    # invokes: Lcom/android/server/pm/PackageManagerService;->getDefaultVerificationResponse(Landroid/os/UserHandle;)I
    invoke-static {v4, v5}, Lcom/android/server/pm/PackageManagerService;->access$4800(Lcom/android/server/pm/PackageManagerService;Landroid/os/UserHandle;)I

    move-result v4

    iget v5, p0, Lcom/android/server/pm/PackageManagerService$PendingVerifierReceiver;->mUid:I

    invoke-direct {v3, v4, v5}, Lcom/android/server/pm/PackageVerificationResponse;-><init>(II)V

    .line 18324
    .local v3, "response":Lcom/android/server/pm/PackageVerificationResponse;
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$PendingVerifierReceiver;->mState:Lcom/android/server/pm/PackageVerificationState;

    iget v5, p0, Lcom/android/server/pm/PackageManagerService$PendingVerifierReceiver;->mUid:I

    invoke-virtual {v4, v5}, Lcom/android/server/pm/PackageVerificationState;->isCurrentVerifier(I)Z

    move-result v4

    if-eqz v4, :cond_b9

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$PendingVerifierReceiver;->mState:Lcom/android/server/pm/PackageVerificationState;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageVerificationState;->timeoutExtended()Z

    move-result v4

    if-nez v4, :cond_b9

    .line 18325
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$PendingVerifierReceiver;->mState:Lcom/android/server/pm/PackageVerificationState;

    const/16 v5, 0x10

    invoke-virtual {v4, v5, v3}, Lcom/android/server/pm/PackageVerificationState;->addHandlerMessage(ILjava/lang/Object;)V

    .line 18326
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$PendingVerifierReceiver;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 18327
    .local v4, "msg":Landroid/os/Message;
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$PendingVerifierReceiver;->mState:Lcom/android/server/pm/PackageVerificationState;

    invoke-virtual {v5}, Lcom/android/server/pm/PackageVerificationState;->getVerificationId()I

    move-result v5

    iput v5, v4, Landroid/os/Message;->arg1:I

    .line 18328
    iput-object v3, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 18329
    const-string v5, "PackageManager"

    const-string v6, "VERIFY"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "sendMessageDelayed(CHECK_PENDING_VERIFICATION, "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/server/pm/PackageManagerService$PendingVerifierReceiver;->mState:Lcom/android/server/pm/PackageVerificationState;

    .line 18330
    invoke-virtual {v8}, Lcom/android/server/pm/PackageVerificationState;->getVerificationId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/server/pm/PackageManagerService$PendingVerifierReceiver;->this$0:Lcom/android/server/pm/PackageManagerService;

    # invokes: Lcom/android/server/pm/PackageManagerService;->getVerificationTimeout()J
    invoke-static {v8}, Lcom/android/server/pm/PackageManagerService;->access$000(Lcom/android/server/pm/PackageManagerService;)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 18329
    invoke-static {v6, v7}, Lcom/android/server/pm/PackageManagerService;->logFormat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18331
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$PendingVerifierReceiver;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$PendingVerifierReceiver;->this$0:Lcom/android/server/pm/PackageManagerService;

    # invokes: Lcom/android/server/pm/PackageManagerService;->getVerificationTimeout()J
    invoke-static {v6}, Lcom/android/server/pm/PackageManagerService;->access$000(Lcom/android/server/pm/PackageManagerService;)J

    move-result-wide v6

    invoke-virtual {v5, v4, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 18334
    .end local v4    # "msg":Landroid/os/Message;
    :cond_b9
    iget-boolean v4, p0, Lcom/android/server/pm/PackageManagerService$PendingVerifierReceiver;->mSufficientVerifierTimeout:Z

    if-eqz v4, :cond_121

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$PendingVerifierReceiver;->mState:Lcom/android/server/pm/PackageVerificationState;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageVerificationState;->isSufficientVerificationComplete()Z

    move-result v4

    if-nez v4, :cond_121

    .line 18335
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$PendingVerifierReceiver;->mState:Lcom/android/server/pm/PackageVerificationState;

    const/16 v5, 0x32

    invoke-virtual {v4, v5, v3}, Lcom/android/server/pm/PackageVerificationState;->addHandlerMessage(ILjava/lang/Object;)V

    .line 18336
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$PendingVerifierReceiver;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 18337
    .restart local v4    # "msg":Landroid/os/Message;
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$PendingVerifierReceiver;->mState:Lcom/android/server/pm/PackageVerificationState;

    invoke-virtual {v5}, Lcom/android/server/pm/PackageVerificationState;->getVerificationId()I

    move-result v5

    iput v5, v4, Landroid/os/Message;->arg1:I

    .line 18338
    iput-object v3, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 18339
    const-string v5, "PackageManager"

    const-string v6, "VERIFY"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "sendMessageDelayed(SUFFICIENT_VERIFICATION_TIMEOUT, "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/server/pm/PackageManagerService$PendingVerifierReceiver;->mState:Lcom/android/server/pm/PackageVerificationState;

    .line 18340
    invoke-virtual {v8}, Lcom/android/server/pm/PackageVerificationState;->getVerificationId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/server/pm/PackageManagerService$PendingVerifierReceiver;->this$0:Lcom/android/server/pm/PackageManagerService;

    # invokes: Lcom/android/server/pm/PackageManagerService;->getVerificationTimeout()J
    invoke-static {v8}, Lcom/android/server/pm/PackageManagerService;->access$000(Lcom/android/server/pm/PackageManagerService;)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 18339
    invoke-static {v6, v7}, Lcom/android/server/pm/PackageManagerService;->logFormat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18341
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$PendingVerifierReceiver;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$PendingVerifierReceiver;->this$0:Lcom/android/server/pm/PackageManagerService;

    # invokes: Lcom/android/server/pm/PackageManagerService;->getVerificationTimeout()J
    invoke-static {v6}, Lcom/android/server/pm/PackageManagerService;->access$000(Lcom/android/server/pm/PackageManagerService;)J

    move-result-wide v6

    invoke-virtual {v5, v4, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 18343
    .end local v1    # "params":Lcom/android/server/pm/PackageManagerService$InstallParams;
    .end local v2    # "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    .end local v3    # "response":Lcom/android/server/pm/PackageVerificationResponse;
    .end local v4    # "msg":Landroid/os/Message;
    :cond_121
    monitor-exit v0

    .line 18344
    return-void

    .line 18343
    :catchall_123
    move-exception v1

    monitor-exit v0
    :try_end_125
    .catchall {:try_start_30 .. :try_end_125} :catchall_123

    throw v1
.end method
