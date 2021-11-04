.class public Lsamsung/uwb/UwbEraseURSKStatus;
.super Ljava/lang/Object;
.source "UwbEraseURSKStatus.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lsamsung/uwb/UwbEraseURSKStatus;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mNumberOfSessionId:B

.field private mSessionIdsStatus:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field private mStatus:B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 71
    new-instance v0, Lsamsung/uwb/UwbEraseURSKStatus$1;

    invoke-direct {v0}, Lsamsung/uwb/UwbEraseURSKStatus$1;-><init>()V

    sput-object v0, Lsamsung/uwb/UwbEraseURSKStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(BBLjava/util/HashMap;)V
    .registers 5
    .param p1, "status"    # B
    .param p2, "numberOfSessionId"    # B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(BB",
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .line 27
    .local p3, "sessionIdsStatus":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Byte;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lsamsung/uwb/UwbEraseURSKStatus;->mSessionIdsStatus:Ljava/util/HashMap;

    .line 28
    iput-byte p1, p0, Lsamsung/uwb/UwbEraseURSKStatus;->mStatus:B

    .line 29
    iput-byte p2, p0, Lsamsung/uwb/UwbEraseURSKStatus;->mNumberOfSessionId:B

    .line 30
    iput-object p3, p0, Lsamsung/uwb/UwbEraseURSKStatus;->mSessionIdsStatus:Ljava/util/HashMap;

    .line 31
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lsamsung/uwb/UwbEraseURSKStatus;->mSessionIdsStatus:Ljava/util/HashMap;

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lsamsung/uwb/UwbEraseURSKStatus;->mStatus:B

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lsamsung/uwb/UwbEraseURSKStatus;->mNumberOfSessionId:B

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Lsamsung/uwb/UwbEraseURSKStatus;->mSessionIdsStatus:Ljava/util/HashMap;

    .line 69
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method public getNumberOfSessionId()B
    .registers 2

    .line 38
    iget-byte v0, p0, Lsamsung/uwb/UwbEraseURSKStatus;->mNumberOfSessionId:B

    return v0
.end method

.method public getSessionIdsStatus()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lsamsung/uwb/UwbEraseURSKStatus;->mSessionIdsStatus:Ljava/util/HashMap;

    return-object v0
.end method

.method public getStatus()B
    .registers 2

    .line 34
    iget-byte v0, p0, Lsamsung/uwb/UwbEraseURSKStatus;->mStatus:B

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UwbEraseURSKStatus {, mStatus = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lsamsung/uwb/UwbEraseURSKStatus;->mStatus:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mNumberOfSessionId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lsamsung/uwb/UwbEraseURSKStatus;->mNumberOfSessionId:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mSessionIdsStatus = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lsamsung/uwb/UwbEraseURSKStatus;->mSessionIdsStatus:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 60
    iget-byte v0, p0, Lsamsung/uwb/UwbEraseURSKStatus;->mStatus:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 61
    iget-byte v0, p0, Lsamsung/uwb/UwbEraseURSKStatus;->mNumberOfSessionId:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 62
    iget-object v0, p0, Lsamsung/uwb/UwbEraseURSKStatus;->mSessionIdsStatus:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 63
    return-void
.end method
