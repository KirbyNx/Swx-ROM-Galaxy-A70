.class Lcom/android/server/biometrics/BiometricServiceBase$2;
.super Landroid/app/SynchronousUserSwitchObserver;
.source "BiometricServiceBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/biometrics/BiometricServiceBase;->listenForUserSwitches()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/biometrics/BiometricServiceBase;


# direct methods
.method constructor <init>(Lcom/android/server/biometrics/BiometricServiceBase;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/biometrics/BiometricServiceBase;

    .line 1683
    iput-object p1, p0, Lcom/android/server/biometrics/BiometricServiceBase$2;->this$0:Lcom/android/server/biometrics/BiometricServiceBase;

    invoke-direct {p0}, Landroid/app/SynchronousUserSwitchObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onUserSwitchComplete$0$BiometricServiceBase$2(I)V
    .registers 3
    .param p1, "newUserId"    # I

    .line 1695
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase$2;->this$0:Lcom/android/server/biometrics/BiometricServiceBase;

    invoke-virtual {v0, p1}, Lcom/android/server/biometrics/BiometricServiceBase;->handleUserComplete(I)V

    .line 1696
    return-void
.end method

.method public onUserSwitchComplete(I)V
    .registers 6
    .param p1, "newUserId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1693
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase$2;->this$0:Lcom/android/server/biometrics/BiometricServiceBase;

    invoke-virtual {v0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUserSwitchComplete : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1694
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase$2;->this$0:Lcom/android/server/biometrics/BiometricServiceBase;

    iget-object v0, v0, Lcom/android/server/biometrics/BiometricServiceBase;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;

    new-instance v1, Lcom/android/server/biometrics/-$$Lambda$BiometricServiceBase$2$Agnoq-68cTsJhfEYMvZPNa3Tw6g;

    invoke-direct {v1, p0, p1}, Lcom/android/server/biometrics/-$$Lambda$BiometricServiceBase$2$Agnoq-68cTsJhfEYMvZPNa3Tw6g;-><init>(Lcom/android/server/biometrics/BiometricServiceBase$2;I)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/biometrics/BiometricServiceBase$H;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1697
    return-void
.end method

.method public onUserSwitching(I)V
    .registers 5
    .param p1, "newUserId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1686
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase$2;->this$0:Lcom/android/server/biometrics/BiometricServiceBase;

    iget-object v0, v0, Lcom/android/server/biometrics/BiometricServiceBase;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;

    const/16 v1, 0xa

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/biometrics/BiometricServiceBase$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 1687
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1688
    return-void
.end method
