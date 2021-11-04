.class public final Lsamsung/uwb/ConfigParamTlv;
.super Ljava/lang/Object;
.source "ConfigParamTlv.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lsamsung/uwb/ConfigParamTlv;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private length:I

.field private type:Ljava/lang/String;

.field private value:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 61
    new-instance v0, Lsamsung/uwb/ConfigParamTlv$1;

    invoke-direct {v0}, Lsamsung/uwb/ConfigParamTlv$1;-><init>()V

    sput-object v0, Lsamsung/uwb/ConfigParamTlv;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsamsung/uwb/ConfigParamTlv;->type:Ljava/lang/String;

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lsamsung/uwb/ConfigParamTlv;->length:I

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lsamsung/uwb/ConfigParamTlv;->value:[B

    .line 59
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I[B)V
    .registers 4
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "length"    # I
    .param p3, "value"    # [B

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lsamsung/uwb/ConfigParamTlv;->type:Ljava/lang/String;

    .line 27
    iput p2, p0, Lsamsung/uwb/ConfigParamTlv;->length:I

    .line 28
    iput-object p3, p0, Lsamsung/uwb/ConfigParamTlv;->value:[B

    .line 29
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 45
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 84
    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    return v0

    .line 85
    :cond_4
    if-eqz p1, :cond_1d

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_11

    goto :goto_1d

    .line 86
    :cond_11
    move-object v0, p1

    check-cast v0, Lsamsung/uwb/ConfigParamTlv;

    .line 87
    .local v0, "that":Lsamsung/uwb/ConfigParamTlv;
    iget-object v1, p0, Lsamsung/uwb/ConfigParamTlv;->type:Ljava/lang/String;

    iget-object v2, v0, Lsamsung/uwb/ConfigParamTlv;->type:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 85
    .end local v0    # "that":Lsamsung/uwb/ConfigParamTlv;
    :cond_1d
    :goto_1d
    const/4 v0, 0x0

    return v0
.end method

.method public getLength()I
    .registers 2

    .line 36
    iget v0, p0, Lsamsung/uwb/ConfigParamTlv;->length:I

    return v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    .line 32
    iget-object v0, p0, Lsamsung/uwb/ConfigParamTlv;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()[B
    .registers 2

    .line 40
    iget-object v0, p0, Lsamsung/uwb/ConfigParamTlv;->value:[B

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 92
    iget-object v0, p0, Lsamsung/uwb/ConfigParamTlv;->type:Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_a
    add-int/lit8 v0, v0, 0x1f

    .line 93
    .local v0, "result":I
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConfigParamTlv{type=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lsamsung/uwb/ConfigParamTlv;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lsamsung/uwb/ConfigParamTlv;->length:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lsamsung/uwb/ConfigParamTlv;->value:[B

    .line 78
    invoke-static {v1}, Lsamsung/uwb/UwbUtil;->toHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 75
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 50
    iget-object v0, p0, Lsamsung/uwb/ConfigParamTlv;->type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 51
    iget v0, p0, Lsamsung/uwb/ConfigParamTlv;->length:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 52
    iget-object v0, p0, Lsamsung/uwb/ConfigParamTlv;->value:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 53
    return-void
.end method
