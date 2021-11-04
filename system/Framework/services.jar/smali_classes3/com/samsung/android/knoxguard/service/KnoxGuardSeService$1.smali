.class Lcom/samsung/android/knoxguard/service/KnoxGuardSeService$1;
.super Lcom/android/internal/widget/IRemoteLockMonitorCallback$Stub;
.source "KnoxGuardSeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 508
    invoke-direct {p0}, Lcom/android/internal/widget/IRemoteLockMonitorCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public changeRemoteLockState(Lcom/android/internal/widget/RemoteLockInfo;)V
    .registers 5
    .param p1, "data"    # Lcom/android/internal/widget/RemoteLockInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 512
    # getter for: Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeRemoteLockState data = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/internal/widget/RemoteLockInfo;->lockType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    return-void
.end method

.method public checkRemoteLockPassword([B)I
    .registers 6
    .param p1, "pass"    # [B

    .line 518
    # getter for: Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "checkRemoteLockPassword"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    new-instance v0, Ljava/lang/String;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 522
    .local v0, "password":Ljava/lang/String;
    :try_start_10
    invoke-static {v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->verifyHOTPPinRefactor(Ljava/lang/String;)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->getIntResult(Lcom/samsung/android/knoxguard/service/KgErrWrapper;)I

    move-result v1

    # setter for: Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mFailureCount:I
    invoke-static {v1}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->access$102(I)I

    .line 525
    # getter for: Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mFailureCount:I
    invoke-static {}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->access$100()I

    move-result v1

    if-nez v1, :cond_31

    .line 526
    # getter for: Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[HOTP] pin is correct!"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    invoke-static {}, Lcom/samsung/android/knoxguard/service/utils/Utils;->setKGSystemProperty()V

    .line 529
    # invokes: Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->unlockCompleted()V
    invoke-static {}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->access$200()V

    goto :goto_56

    .line 531
    :cond_31
    # getter for: Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HOTP] pin is wrong!!! current failure count ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # getter for: Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mFailureCount:I
    invoke-static {}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->access$100()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    const/4 v1, 0x1

    # invokes: Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->setRemoteLockToLockscreen(Z)V
    invoke-static {v1}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->access$300(Z)V
    :try_end_56
    .catchall {:try_start_10 .. :try_end_56} :catchall_57

    .line 537
    :goto_56
    goto :goto_64

    .line 534
    :catchall_57
    move-exception v1

    .line 535
    .local v1, "e":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 536
    # getter for: Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "[HOTP] verify pin error"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_64
    # getter for: Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mFailureCount:I
    invoke-static {}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->access$100()I

    move-result v1

    return v1
.end method
