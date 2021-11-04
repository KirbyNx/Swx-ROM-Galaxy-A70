.class public interface abstract Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;
.super Ljava/lang/Object;
.source "BiometricServiceBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/BiometricServiceBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60c
    name = "DaemonWrapper"
.end annotation


# static fields
.field public static final ERROR_ESRCH:I = 0x3


# virtual methods
.method public abstract authenticate(JI)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract cancel()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract enroll([BIILjava/util/ArrayList;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract enumerate()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public getAuthenticatorId()J
    .registers 3

    .line 536
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public abstract remove(II)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public request(II[B[B)I
    .registers 6
    .param p1, "cmd"    # I
    .param p2, "param"    # I
    .param p3, "input"    # [B
    .param p4, "output"    # [B

    .line 539
    const/4 v0, 0x0

    return v0
.end method

.method public abstract resetLockout([B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public sehInstallTAEnd([B)I
    .registers 3
    .param p1, "data"    # [B

    .line 543
    const/4 v0, 0x0

    return v0
.end method

.method public sehInstallTAStart()I
    .registers 2

    .line 541
    const/4 v0, 0x0

    return v0
.end method

.method public sehInstallTAWrite([B)I
    .registers 3
    .param p1, "data"    # [B

    .line 542
    const/4 v0, 0x0

    return v0
.end method
