.class public Lcom/google/android/startop/iorap/SystemServiceEvent;
.super Ljava/lang/Object;
.source "SystemServiceEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/startop/iorap/SystemServiceEvent$Type;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/startop/iorap/SystemServiceEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final TYPE_BOOT_PHASE:I = 0x0

.field private static final TYPE_MAX:I = 0x1

.field public static final TYPE_START:I = 0x1


# instance fields
.field public final type:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 98
    new-instance v0, Lcom/google/android/startop/iorap/SystemServiceEvent$1;

    invoke-direct {v0}, Lcom/google/android/startop/iorap/SystemServiceEvent$1;-><init>()V

    sput-object v0, Lcom/google/android/startop/iorap/SystemServiceEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2
    .param p1, "type"    # I

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput p1, p0, Lcom/google/android/startop/iorap/SystemServiceEvent;->type:I

    .line 56
    invoke-direct {p0}, Lcom/google/android/startop/iorap/SystemServiceEvent;->checkConstructorArguments()V

    .line 57
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/startop/iorap/SystemServiceEvent;->type:I

    .line 90
    invoke-direct {p0}, Lcom/google/android/startop/iorap/SystemServiceEvent;->checkConstructorArguments()V

    .line 91
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/google/android/startop/iorap/SystemServiceEvent$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/google/android/startop/iorap/SystemServiceEvent$1;

    .line 34
    invoke-direct {p0, p1}, Lcom/google/android/startop/iorap/SystemServiceEvent;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private checkConstructorArguments()V
    .registers 3

    .line 60
    iget v0, p0, Lcom/google/android/startop/iorap/SystemServiceEvent;->type:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/startop/iorap/CheckHelpers;->checkTypeInRange(II)V

    .line 61
    return-void
.end method

.method private equals(Lcom/google/android/startop/iorap/SystemServiceEvent;)Z
    .registers 4
    .param p1, "other"    # Lcom/google/android/startop/iorap/SystemServiceEvent;

    .line 79
    iget v0, p0, Lcom/google/android/startop/iorap/SystemServiceEvent;->type:I

    iget v1, p1, Lcom/google/android/startop/iorap/SystemServiceEvent;->type:I

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 95
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "other"    # Ljava/lang/Object;

    .line 70
    if-ne p0, p1, :cond_4

    .line 71
    const/4 v0, 0x1

    return v0

    .line 72
    :cond_4
    instance-of v0, p1, Lcom/google/android/startop/iorap/SystemServiceEvent;

    if-eqz v0, :cond_10

    .line 73
    move-object v0, p1

    check-cast v0, Lcom/google/android/startop/iorap/SystemServiceEvent;

    invoke-direct {p0, v0}, Lcom/google/android/startop/iorap/SystemServiceEvent;->equals(Lcom/google/android/startop/iorap/SystemServiceEvent;)Z

    move-result v0

    return v0

    .line 75
    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 65
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/startop/iorap/SystemServiceEvent;->type:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "{type: %d}"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 85
    iget v0, p0, Lcom/google/android/startop/iorap/SystemServiceEvent;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 86
    return-void
.end method
