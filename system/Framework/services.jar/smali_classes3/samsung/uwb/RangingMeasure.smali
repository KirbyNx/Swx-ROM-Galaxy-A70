.class public Lsamsung/uwb/RangingMeasure;
.super Ljava/lang/Object;
.source "RangingMeasure.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lsamsung/uwb/RangingMeasure;",
            ">;"
        }
    .end annotation
.end field

.field public static final ONEWAY:I = 0x1

.field public static final TWOWAY:I = 0x2


# instance fields
.field private mNoOfRangingMeasures:I

.field private mOneWayRangingData:Lsamsung/uwb/OneWayRangingData;

.field private mRangingType:I

.field private mTwoWayRangingData:[Lsamsung/uwb/TwoWayRangingData;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 49
    new-instance v0, Lsamsung/uwb/RangingMeasure$1;

    invoke-direct {v0}, Lsamsung/uwb/RangingMeasure$1;-><init>()V

    sput-object v0, Lsamsung/uwb/RangingMeasure;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILsamsung/uwb/OneWayRangingData;)V
    .registers 4
    .param p1, "mNoOfRangingMeasures"    # I
    .param p2, "mOneWayRangingData"    # Lsamsung/uwb/OneWayRangingData;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput p1, p0, Lsamsung/uwb/RangingMeasure;->mNoOfRangingMeasures:I

    .line 32
    iput-object p2, p0, Lsamsung/uwb/RangingMeasure;->mOneWayRangingData:Lsamsung/uwb/OneWayRangingData;

    .line 33
    const/4 v0, 0x1

    iput v0, p0, Lsamsung/uwb/RangingMeasure;->mRangingType:I

    .line 34
    return-void
.end method

.method public constructor <init>(I[Lsamsung/uwb/TwoWayRangingData;)V
    .registers 4
    .param p1, "mNoOfRangingMeasures"    # I
    .param p2, "mTwoWayRangingData"    # [Lsamsung/uwb/TwoWayRangingData;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput p1, p0, Lsamsung/uwb/RangingMeasure;->mNoOfRangingMeasures:I

    .line 38
    iput-object p2, p0, Lsamsung/uwb/RangingMeasure;->mTwoWayRangingData:[Lsamsung/uwb/TwoWayRangingData;

    .line 39
    const/4 v0, 0x2

    iput v0, p0, Lsamsung/uwb/RangingMeasure;->mRangingType:I

    .line 40
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lsamsung/uwb/RangingMeasure;->mNoOfRangingMeasures:I

    .line 44
    sget-object v0, Lsamsung/uwb/TwoWayRangingData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lsamsung/uwb/TwoWayRangingData;

    iput-object v0, p0, Lsamsung/uwb/RangingMeasure;->mTwoWayRangingData:[Lsamsung/uwb/TwoWayRangingData;

    .line 45
    const-class v0, Lsamsung/uwb/OneWayRangingData;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lsamsung/uwb/OneWayRangingData;

    iput-object v0, p0, Lsamsung/uwb/RangingMeasure;->mOneWayRangingData:Lsamsung/uwb/OneWayRangingData;

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lsamsung/uwb/RangingMeasure;->mRangingType:I

    .line 47
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 93
    const/4 v0, 0x0

    return v0
.end method

.method public getNoOfRangingMeasures()I
    .registers 2

    .line 62
    iget v0, p0, Lsamsung/uwb/RangingMeasure;->mNoOfRangingMeasures:I

    return v0
.end method

.method public getOneWayRangingData()Lsamsung/uwb/OneWayRangingData;
    .registers 2

    .line 70
    iget-object v0, p0, Lsamsung/uwb/RangingMeasure;->mOneWayRangingData:Lsamsung/uwb/OneWayRangingData;

    return-object v0
.end method

.method public getRangingDataType()I
    .registers 2

    .line 88
    iget v0, p0, Lsamsung/uwb/RangingMeasure;->mRangingType:I

    return v0
.end method

.method public getTwoWayRangingData()[Lsamsung/uwb/TwoWayRangingData;
    .registers 2

    .line 79
    iget-object v0, p0, Lsamsung/uwb/RangingMeasure;->mTwoWayRangingData:[Lsamsung/uwb/TwoWayRangingData;

    return-object v0
.end method

.method public setNoOfRangingMeasures(I)V
    .registers 2
    .param p1, "mNoOfRangingMeasures"    # I

    .line 66
    iput p1, p0, Lsamsung/uwb/RangingMeasure;->mNoOfRangingMeasures:I

    .line 67
    return-void
.end method

.method public setOneWayRangingData(Lsamsung/uwb/OneWayRangingData;)V
    .registers 3
    .param p1, "mOneWayRangingData"    # Lsamsung/uwb/OneWayRangingData;

    .line 74
    iput-object p1, p0, Lsamsung/uwb/RangingMeasure;->mOneWayRangingData:Lsamsung/uwb/OneWayRangingData;

    .line 75
    const/4 v0, 0x1

    iput v0, p0, Lsamsung/uwb/RangingMeasure;->mRangingType:I

    .line 76
    return-void
.end method

.method public setTwoWayRangingData([Lsamsung/uwb/TwoWayRangingData;)V
    .registers 3
    .param p1, "mTwoWayRangingData"    # [Lsamsung/uwb/TwoWayRangingData;

    .line 83
    iput-object p1, p0, Lsamsung/uwb/RangingMeasure;->mTwoWayRangingData:[Lsamsung/uwb/TwoWayRangingData;

    .line 84
    const/4 v0, 0x2

    iput v0, p0, Lsamsung/uwb/RangingMeasure;->mRangingType:I

    .line 85
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RangingMeasure {, noOfRangingMeasures = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lsamsung/uwb/RangingMeasure;->mNoOfRangingMeasures:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", oneWayRangingData = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lsamsung/uwb/RangingMeasure;->mOneWayRangingData:Lsamsung/uwb/OneWayRangingData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", twoWayRangingData = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lsamsung/uwb/RangingMeasure;->mTwoWayRangingData:[Lsamsung/uwb/TwoWayRangingData;

    .line 109
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

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
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 98
    iget v0, p0, Lsamsung/uwb/RangingMeasure;->mNoOfRangingMeasures:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 99
    iget-object v0, p0, Lsamsung/uwb/RangingMeasure;->mTwoWayRangingData:[Lsamsung/uwb/TwoWayRangingData;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 100
    iget-object v0, p0, Lsamsung/uwb/RangingMeasure;->mOneWayRangingData:Lsamsung/uwb/OneWayRangingData;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 101
    iget v0, p0, Lsamsung/uwb/RangingMeasure;->mRangingType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 102
    return-void
.end method
