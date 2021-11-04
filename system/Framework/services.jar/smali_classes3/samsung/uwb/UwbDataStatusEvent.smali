.class public Lsamsung/uwb/UwbDataStatusEvent;
.super Ljava/lang/Object;
.source "UwbDataStatusEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lsamsung/uwb/UwbDataStatusEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final RX_MODE_DATA_STATUS:I = 0x2

.field public static final TX_MODE_DATA_STATUS:I = 0x1


# instance fields
.field private mAddress:[B

.field private mRcvData:[B

.field private mSessionId:J

.field private mTransceiveMode:B

.field private mTxStatus:B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 92
    new-instance v0, Lsamsung/uwb/UwbDataStatusEvent$1;

    invoke-direct {v0}, Lsamsung/uwb/UwbDataStatusEvent$1;-><init>()V

    sput-object v0, Lsamsung/uwb/UwbDataStatusEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(BJB)V
    .registers 6
    .param p1, "mode"    # B
    .param p2, "sessionId"    # J
    .param p4, "txStatus"    # B

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-byte p1, p0, Lsamsung/uwb/UwbDataStatusEvent;->mTransceiveMode:B

    .line 31
    iput-wide p2, p0, Lsamsung/uwb/UwbDataStatusEvent;->mSessionId:J

    .line 32
    iput-byte p4, p0, Lsamsung/uwb/UwbDataStatusEvent;->mTxStatus:B

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lsamsung/uwb/UwbDataStatusEvent;->mAddress:[B

    .line 34
    iput-object v0, p0, Lsamsung/uwb/UwbDataStatusEvent;->mRcvData:[B

    .line 35
    return-void
.end method

.method public constructor <init>(BJ[B[B)V
    .registers 7
    .param p1, "mode"    # B
    .param p2, "sessionId"    # J
    .param p4, "address"    # [B
    .param p5, "rcvData"    # [B

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-byte p1, p0, Lsamsung/uwb/UwbDataStatusEvent;->mTransceiveMode:B

    .line 39
    iput-wide p2, p0, Lsamsung/uwb/UwbDataStatusEvent;->mSessionId:J

    .line 40
    iput-object p4, p0, Lsamsung/uwb/UwbDataStatusEvent;->mAddress:[B

    .line 41
    iput-object p5, p0, Lsamsung/uwb/UwbDataStatusEvent;->mRcvData:[B

    .line 42
    const/4 v0, 0x0

    iput-byte v0, p0, Lsamsung/uwb/UwbDataStatusEvent;->mTxStatus:B

    .line 43
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lsamsung/uwb/UwbDataStatusEvent;->mTransceiveMode:B

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lsamsung/uwb/UwbDataStatusEvent;->mSessionId:J

    .line 84
    iget-byte v0, p0, Lsamsung/uwb/UwbDataStatusEvent;->mTransceiveMode:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1b

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lsamsung/uwb/UwbDataStatusEvent;->mTxStatus:B

    goto :goto_27

    .line 87
    :cond_1b
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lsamsung/uwb/UwbDataStatusEvent;->mAddress:[B

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lsamsung/uwb/UwbDataStatusEvent;->mRcvData:[B

    .line 90
    :goto_27
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method public getAddress()[B
    .registers 2

    .line 57
    iget-object v0, p0, Lsamsung/uwb/UwbDataStatusEvent;->mAddress:[B

    return-object v0
.end method

.method public getRcvData()[B
    .registers 2

    .line 61
    iget-object v0, p0, Lsamsung/uwb/UwbDataStatusEvent;->mRcvData:[B

    return-object v0
.end method

.method public getSessionId()J
    .registers 3

    .line 49
    iget-wide v0, p0, Lsamsung/uwb/UwbDataStatusEvent;->mSessionId:J

    return-wide v0
.end method

.method public getTransceiveMode()B
    .registers 2

    .line 46
    iget-byte v0, p0, Lsamsung/uwb/UwbDataStatusEvent;->mTransceiveMode:B

    return v0
.end method

.method public getTxStatus()B
    .registers 2

    .line 53
    iget-byte v0, p0, Lsamsung/uwb/UwbDataStatusEvent;->mTxStatus:B

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UwbDataStatusEvent {  Mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lsamsung/uwb/UwbDataStatusEvent;->mTransceiveMode:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", SessionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lsamsung/uwb/UwbDataStatusEvent;->mSessionId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", Tx Status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lsamsung/uwb/UwbDataStatusEvent;->mTxStatus:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", address="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lsamsung/uwb/UwbDataStatusEvent;->mAddress:[B

    .line 110
    invoke-static {v1}, Lsamsung/uwb/UwbUtil;->toHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", Rx Data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lsamsung/uwb/UwbDataStatusEvent;->mRcvData:[B

    .line 111
    invoke-static {v1}, Lsamsung/uwb/UwbUtil;->toHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 106
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 71
    iget-byte v0, p0, Lsamsung/uwb/UwbDataStatusEvent;->mTransceiveMode:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 72
    iget-wide v0, p0, Lsamsung/uwb/UwbDataStatusEvent;->mSessionId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 73
    iget-byte v0, p0, Lsamsung/uwb/UwbDataStatusEvent;->mTransceiveMode:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_15

    .line 74
    iget-byte v0, p0, Lsamsung/uwb/UwbDataStatusEvent;->mTxStatus:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_1f

    .line 76
    :cond_15
    iget-object v0, p0, Lsamsung/uwb/UwbDataStatusEvent;->mAddress:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 77
    iget-object v0, p0, Lsamsung/uwb/UwbDataStatusEvent;->mRcvData:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 79
    :goto_1f
    return-void
.end method
