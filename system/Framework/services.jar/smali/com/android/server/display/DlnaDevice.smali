.class public final Lcom/android/server/display/DlnaDevice;
.super Ljava/lang/Object;
.source "DlnaDevice.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DlnaDevice"


# instance fields
.field private mConnectionState:I

.field private mDeviceName:Ljava/lang/String;

.field private mDlnaSupportTypes:I

.field private mPlayerType:I

.field private mUid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "deviceName"    # Ljava/lang/String;

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DlnaDevice deviceName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DlnaDevice"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    if-eqz p1, :cond_20

    .line 26
    iput-object p1, p0, Lcom/android/server/display/DlnaDevice;->mUid:Ljava/lang/String;

    .line 27
    iput-object p2, p0, Lcom/android/server/display/DlnaDevice;->mDeviceName:Ljava/lang/String;

    .line 28
    return-void

    .line 23
    :cond_20
    const-string v0, "DlnaDevice uid must not be null"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "uid must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public equals(Lcom/android/server/display/DlnaDevice;)Z
    .registers 4
    .param p1, "other"    # Lcom/android/server/display/DlnaDevice;

    .line 63
    if-eqz p1, :cond_e

    iget-object v0, p0, Lcom/android/server/display/DlnaDevice;->mUid:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/server/display/DlnaDevice;->mUid:Ljava/lang/String;

    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    .line 63
    :goto_f
    return v0
.end method

.method public getConnectionState()I
    .registers 2

    .line 39
    iget v0, p0, Lcom/android/server/display/DlnaDevice;->mConnectionState:I

    return v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .registers 2

    .line 35
    iget-object v0, p0, Lcom/android/server/display/DlnaDevice;->mDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getDlnaSupportTypes()I
    .registers 2

    .line 59
    iget v0, p0, Lcom/android/server/display/DlnaDevice;->mDlnaSupportTypes:I

    return v0
.end method

.method public getPlayerType()I
    .registers 2

    .line 51
    iget v0, p0, Lcom/android/server/display/DlnaDevice;->mPlayerType:I

    return v0
.end method

.method public getUid()Ljava/lang/String;
    .registers 2

    .line 31
    iget-object v0, p0, Lcom/android/server/display/DlnaDevice;->mUid:Ljava/lang/String;

    return-object v0
.end method

.method public setConnectionState(I)V
    .registers 2
    .param p1, "connectionState"    # I

    .line 43
    iput p1, p0, Lcom/android/server/display/DlnaDevice;->mConnectionState:I

    .line 44
    return-void
.end method

.method public setDlnaSupportTypes(I)V
    .registers 2
    .param p1, "supportTypes"    # I

    .line 55
    iput p1, p0, Lcom/android/server/display/DlnaDevice;->mDlnaSupportTypes:I

    .line 56
    return-void
.end method

.method public setPlayerType(I)V
    .registers 2
    .param p1, "playerType"    # I

    .line 47
    iput p1, p0, Lcom/android/server/display/DlnaDevice;->mPlayerType:I

    .line 48
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deviceName : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DlnaDevice;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", connectionState : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DlnaDevice;->mConnectionState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", playerType : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DlnaDevice;->mPlayerType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "result":Ljava/lang/String;
    return-object v0
.end method
