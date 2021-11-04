.class public Lcom/android/server/location/NSConnectionRecord;
.super Ljava/lang/Object;
.source "NSConnectionRecord.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/server/location/NSConnectionRecord;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private componentName:Ljava/lang/String;

.field private connectedTime:J

.field private connectionCount:I

.field private disconnectedTime:J

.field private disconnectionCount:I

.field private final logTag:Ljava/lang/String;

.field private packageAddedTime:J

.field private packageChangedTime:J

.field private packageName:Ljava/lang/String;

.field private packageRemovedTime:J

.field private packageUpdatedTime:J

.field private prevComponentName:Ljava/lang/String;

.field private prevPackageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 83
    new-instance v0, Lcom/android/server/location/NSConnectionRecord$1;

    invoke-direct {v0}, Lcom/android/server/location/NSConnectionRecord$1;-><init>()V

    sput-object v0, Lcom/android/server/location/NSConnectionRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/location/NSConnectionRecord;->componentName:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Lcom/android/server/location/NSConnectionRecord;->prevComponentName:Ljava/lang/String;

    .line 27
    iput-object v0, p0, Lcom/android/server/location/NSConnectionRecord;->packageName:Ljava/lang/String;

    .line 28
    iput-object v0, p0, Lcom/android/server/location/NSConnectionRecord;->prevPackageName:Ljava/lang/String;

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/location/NSConnectionRecord;->connectionCount:I

    .line 31
    iput v0, p0, Lcom/android/server/location/NSConnectionRecord;->disconnectionCount:I

    .line 33
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/location/NSConnectionRecord;->connectedTime:J

    .line 34
    iput-wide v0, p0, Lcom/android/server/location/NSConnectionRecord;->disconnectedTime:J

    .line 36
    iput-wide v0, p0, Lcom/android/server/location/NSConnectionRecord;->packageUpdatedTime:J

    .line 37
    iput-wide v0, p0, Lcom/android/server/location/NSConnectionRecord;->packageAddedTime:J

    .line 38
    iput-wide v0, p0, Lcom/android/server/location/NSConnectionRecord;->packageRemovedTime:J

    .line 39
    iput-wide v0, p0, Lcom/android/server/location/NSConnectionRecord;->packageChangedTime:J

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/NSConnectionRecord;->logTag:Ljava/lang/String;

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/NSConnectionRecord;->componentName:Ljava/lang/String;

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/NSConnectionRecord;->prevComponentName:Ljava/lang/String;

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/NSConnectionRecord;->packageName:Ljava/lang/String;

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/NSConnectionRecord;->prevPackageName:Ljava/lang/String;

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/server/location/NSConnectionRecord;->connectionCount:I

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/server/location/NSConnectionRecord;->disconnectionCount:I

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/location/NSConnectionRecord;->connectedTime:J

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/location/NSConnectionRecord;->disconnectedTime:J

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/location/NSConnectionRecord;->packageUpdatedTime:J

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/location/NSConnectionRecord;->packageAddedTime:J

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/location/NSConnectionRecord;->packageRemovedTime:J

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/location/NSConnectionRecord;->packageChangedTime:J

    .line 59
    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "logTag"    # Ljava/lang/String;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/location/NSConnectionRecord;->componentName:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Lcom/android/server/location/NSConnectionRecord;->prevComponentName:Ljava/lang/String;

    .line 27
    iput-object v0, p0, Lcom/android/server/location/NSConnectionRecord;->packageName:Ljava/lang/String;

    .line 28
    iput-object v0, p0, Lcom/android/server/location/NSConnectionRecord;->prevPackageName:Ljava/lang/String;

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/location/NSConnectionRecord;->connectionCount:I

    .line 31
    iput v0, p0, Lcom/android/server/location/NSConnectionRecord;->disconnectionCount:I

    .line 33
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/location/NSConnectionRecord;->connectedTime:J

    .line 34
    iput-wide v0, p0, Lcom/android/server/location/NSConnectionRecord;->disconnectedTime:J

    .line 36
    iput-wide v0, p0, Lcom/android/server/location/NSConnectionRecord;->packageUpdatedTime:J

    .line 37
    iput-wide v0, p0, Lcom/android/server/location/NSConnectionRecord;->packageAddedTime:J

    .line 38
    iput-wide v0, p0, Lcom/android/server/location/NSConnectionRecord;->packageRemovedTime:J

    .line 39
    iput-wide v0, p0, Lcom/android/server/location/NSConnectionRecord;->packageChangedTime:J

    .line 42
    iput-object p1, p0, Lcom/android/server/location/NSConnectionRecord;->logTag:Ljava/lang/String;

    .line 43
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method public getComponentName()Ljava/lang/String;
    .registers 2

    .line 96
    iget-object v0, p0, Lcom/android/server/location/NSConnectionRecord;->componentName:Ljava/lang/String;

    return-object v0
.end method

.method public getConnectedTime()J
    .registers 3

    .line 134
    iget-wide v0, p0, Lcom/android/server/location/NSConnectionRecord;->connectedTime:J

    return-wide v0
.end method

.method public getConnectionCount()I
    .registers 2

    .line 118
    iget v0, p0, Lcom/android/server/location/NSConnectionRecord;->connectionCount:I

    return v0
.end method

.method public getDisconnectedDuration()J
    .registers 6

    .line 201
    iget-wide v0, p0, Lcom/android/server/location/NSConnectionRecord;->connectedTime:J

    iget-wide v2, p0, Lcom/android/server/location/NSConnectionRecord;->disconnectedTime:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_a

    .line 202
    sub-long/2addr v0, v2

    return-wide v0

    .line 204
    :cond_a
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getDisconnectedTime()J
    .registers 3

    .line 142
    iget-wide v0, p0, Lcom/android/server/location/NSConnectionRecord;->disconnectedTime:J

    return-wide v0
.end method

.method public getDisconnectionCount()I
    .registers 2

    .line 126
    iget v0, p0, Lcom/android/server/location/NSConnectionRecord;->disconnectionCount:I

    return v0
.end method

.method public getPackageAddedTime()J
    .registers 3

    .line 158
    iget-wide v0, p0, Lcom/android/server/location/NSConnectionRecord;->packageAddedTime:J

    return-wide v0
.end method

.method public getPackageChangedTime()J
    .registers 3

    .line 174
    iget-wide v0, p0, Lcom/android/server/location/NSConnectionRecord;->packageChangedTime:J

    return-wide v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    .line 107
    iget-object v0, p0, Lcom/android/server/location/NSConnectionRecord;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageRemovedTime()J
    .registers 3

    .line 166
    iget-wide v0, p0, Lcom/android/server/location/NSConnectionRecord;->packageRemovedTime:J

    return-wide v0
.end method

.method public getPackageUpdatedTime()J
    .registers 3

    .line 150
    iget-wide v0, p0, Lcom/android/server/location/NSConnectionRecord;->packageUpdatedTime:J

    return-wide v0
.end method

.method public getPrevComponentName()Ljava/lang/String;
    .registers 2

    .line 182
    iget-object v0, p0, Lcom/android/server/location/NSConnectionRecord;->prevComponentName:Ljava/lang/String;

    return-object v0
.end method

.method public getPrevPackageName()Ljava/lang/String;
    .registers 2

    .line 186
    iget-object v0, p0, Lcom/android/server/location/NSConnectionRecord;->prevPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public setComponentName(Ljava/lang/String;)V
    .registers 3
    .param p1, "componentName"    # Ljava/lang/String;

    .line 100
    iget-object v0, p0, Lcom/android/server/location/NSConnectionRecord;->componentName:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 101
    iput-object v0, p0, Lcom/android/server/location/NSConnectionRecord;->prevComponentName:Ljava/lang/String;

    .line 103
    :cond_6
    iput-object p1, p0, Lcom/android/server/location/NSConnectionRecord;->componentName:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public setConnectedTime(J)V
    .registers 3
    .param p1, "connectedTime"    # J

    .line 138
    iput-wide p1, p0, Lcom/android/server/location/NSConnectionRecord;->connectedTime:J

    .line 139
    return-void
.end method

.method public setConnectionCount(I)V
    .registers 2
    .param p1, "connectionCount"    # I

    .line 122
    iput p1, p0, Lcom/android/server/location/NSConnectionRecord;->connectionCount:I

    .line 123
    return-void
.end method

.method public setDisconnectedTime(J)V
    .registers 3
    .param p1, "disconnectedTime"    # J

    .line 146
    iput-wide p1, p0, Lcom/android/server/location/NSConnectionRecord;->disconnectedTime:J

    .line 147
    return-void
.end method

.method public setDisconnectionCount(I)V
    .registers 2
    .param p1, "disconnectionCount"    # I

    .line 130
    iput p1, p0, Lcom/android/server/location/NSConnectionRecord;->disconnectionCount:I

    .line 131
    return-void
.end method

.method public setPackageAddedTime(J)V
    .registers 3
    .param p1, "packageAddedTime"    # J

    .line 162
    iput-wide p1, p0, Lcom/android/server/location/NSConnectionRecord;->packageAddedTime:J

    .line 163
    return-void
.end method

.method public setPackageChangedTime(J)V
    .registers 3
    .param p1, "packageChangedTime"    # J

    .line 178
    iput-wide p1, p0, Lcom/android/server/location/NSConnectionRecord;->packageChangedTime:J

    .line 179
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 111
    iget-object v0, p0, Lcom/android/server/location/NSConnectionRecord;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 112
    iput-object v0, p0, Lcom/android/server/location/NSConnectionRecord;->prevPackageName:Ljava/lang/String;

    .line 114
    :cond_6
    iput-object p1, p0, Lcom/android/server/location/NSConnectionRecord;->packageName:Ljava/lang/String;

    .line 115
    return-void
.end method

.method public setPackageRemovedTime(J)V
    .registers 3
    .param p1, "packageRemovedTime"    # J

    .line 170
    iput-wide p1, p0, Lcom/android/server/location/NSConnectionRecord;->packageRemovedTime:J

    .line 171
    return-void
.end method

.method public setPackageUpdatedTime(J)V
    .registers 3
    .param p1, "packageUpdatedTime"    # J

    .line 154
    iput-wide p1, p0, Lcom/android/server/location/NSConnectionRecord;->packageUpdatedTime:J

    .line 155
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/location/NSConnectionRecord;->logTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_prevComp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    invoke-virtual {p0}, Lcom/android/server/location/NSConnectionRecord;->getPrevComponentName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_comp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    invoke-virtual {p0}, Lcom/android/server/location/NSConnectionRecord;->getComponentName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_connCnt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    invoke-virtual {p0}, Lcom/android/server/location/NSConnectionRecord;->getConnectionCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "_discCnt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    invoke-virtual {p0}, Lcom/android/server/location/NSConnectionRecord;->getDisconnectionCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "_discTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    invoke-virtual {p0}, Lcom/android/server/location/NSConnectionRecord;->getDisconnectedTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "_discDur="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    invoke-virtual {p0}, Lcom/android/server/location/NSConnectionRecord;->getDisconnectedDuration()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 191
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 63
    iget-object v0, p0, Lcom/android/server/location/NSConnectionRecord;->logTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/android/server/location/NSConnectionRecord;->componentName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/android/server/location/NSConnectionRecord;->prevComponentName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/android/server/location/NSConnectionRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/android/server/location/NSConnectionRecord;->prevPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 68
    iget v0, p0, Lcom/android/server/location/NSConnectionRecord;->connectionCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 69
    iget v0, p0, Lcom/android/server/location/NSConnectionRecord;->disconnectionCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 70
    iget-wide v0, p0, Lcom/android/server/location/NSConnectionRecord;->connectedTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 71
    iget-wide v0, p0, Lcom/android/server/location/NSConnectionRecord;->disconnectedTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 72
    iget-wide v0, p0, Lcom/android/server/location/NSConnectionRecord;->packageUpdatedTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 73
    iget-wide v0, p0, Lcom/android/server/location/NSConnectionRecord;->packageAddedTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 74
    iget-wide v0, p0, Lcom/android/server/location/NSConnectionRecord;->packageRemovedTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 75
    iget-wide v0, p0, Lcom/android/server/location/NSConnectionRecord;->packageChangedTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 76
    return-void
.end method
