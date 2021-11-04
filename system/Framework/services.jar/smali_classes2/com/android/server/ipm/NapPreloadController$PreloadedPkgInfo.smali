.class public Lcom/android/server/ipm/NapPreloadController$PreloadedPkgInfo;
.super Ljava/lang/Object;
.source "NapPreloadController.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ipm/NapPreloadController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PreloadedPkgInfo"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/server/ipm/NapPreloadController$PreloadedPkgInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static PRELOAD_TYPE_COMFORTBAL:I

.field public static PRELOAD_TYPE_SEEDBED:I


# instance fields
.field public batchTime:J

.field public packageName:Ljava/lang/String;

.field public pageBoost:Z

.field public preloadType:Ljava/lang/String;

.field public userId:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 74
    const/4 v0, 0x1

    sput v0, Lcom/android/server/ipm/NapPreloadController$PreloadedPkgInfo;->PRELOAD_TYPE_SEEDBED:I

    .line 75
    sput v0, Lcom/android/server/ipm/NapPreloadController$PreloadedPkgInfo;->PRELOAD_TYPE_COMFORTBAL:I

    .line 120
    new-instance v0, Lcom/android/server/ipm/NapPreloadController$PreloadedPkgInfo$1;

    invoke-direct {v0}, Lcom/android/server/ipm/NapPreloadController$PreloadedPkgInfo$1;-><init>()V

    sput-object v0, Lcom/android/server/ipm/NapPreloadController$PreloadedPkgInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .registers 3

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    const-string/jumbo v0, "unknown"

    iput-object v0, p0, Lcom/android/server/ipm/NapPreloadController$PreloadedPkgInfo;->packageName:Ljava/lang/String;

    .line 84
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/ipm/NapPreloadController$PreloadedPkgInfo;->userId:I

    .line 85
    const-string v1, ""

    iput-object v1, p0, Lcom/android/server/ipm/NapPreloadController$PreloadedPkgInfo;->preloadType:Ljava/lang/String;

    .line 86
    iput-boolean v0, p0, Lcom/android/server/ipm/NapPreloadController$PreloadedPkgInfo;->pageBoost:Z

    .line 87
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/ipm/NapPreloadController$PreloadedPkgInfo;->batchTime:J

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ipm/NapPreloadController$PreloadedPkgInfo;->packageName:Ljava/lang/String;

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/server/ipm/NapPreloadController$PreloadedPkgInfo;->userId:I

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ipm/NapPreloadController$PreloadedPkgInfo;->preloadType:Ljava/lang/String;

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/ipm/NapPreloadController$PreloadedPkgInfo;->pageBoost:Z

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/ipm/NapPreloadController$PreloadedPkgInfo;->batchTime:J

    .line 104
    return-void
.end method

.method constructor <init>(Ljava/lang/String;ILjava/lang/String;ZJ)V
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "ioP"    # Z
    .param p5, "time"    # J

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p1, p0, Lcom/android/server/ipm/NapPreloadController$PreloadedPkgInfo;->packageName:Ljava/lang/String;

    .line 92
    iput p2, p0, Lcom/android/server/ipm/NapPreloadController$PreloadedPkgInfo;->userId:I

    .line 93
    iput-object p3, p0, Lcom/android/server/ipm/NapPreloadController$PreloadedPkgInfo;->preloadType:Ljava/lang/String;

    .line 94
    iput-boolean p4, p0, Lcom/android/server/ipm/NapPreloadController$PreloadedPkgInfo;->pageBoost:Z

    .line 95
    iput-wide p5, p0, Lcom/android/server/ipm/NapPreloadController$PreloadedPkgInfo;->batchTime:J

    .line 96
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 108
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "o"    # Ljava/lang/Object;

    .line 135
    instance-of v0, p1, Lcom/android/server/ipm/NapPreloadController$PreloadedPkgInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_34

    .line 136
    move-object v0, p1

    check-cast v0, Lcom/android/server/ipm/NapPreloadController$PreloadedPkgInfo;

    .line 137
    .local v0, "other":Lcom/android/server/ipm/NapPreloadController$PreloadedPkgInfo;
    iget-object v2, p0, Lcom/android/server/ipm/NapPreloadController$PreloadedPkgInfo;->packageName:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/server/ipm/NapPreloadController$PreloadedPkgInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_32

    iget v2, p0, Lcom/android/server/ipm/NapPreloadController$PreloadedPkgInfo;->userId:I

    iget v3, v0, Lcom/android/server/ipm/NapPreloadController$PreloadedPkgInfo;->userId:I

    if-ne v2, v3, :cond_32

    iget-object v2, p0, Lcom/android/server/ipm/NapPreloadController$PreloadedPkgInfo;->preloadType:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/server/ipm/NapPreloadController$PreloadedPkgInfo;->preloadType:Ljava/lang/String;

    .line 139
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    iget-boolean v2, p0, Lcom/android/server/ipm/NapPreloadController$PreloadedPkgInfo;->pageBoost:Z

    iget-boolean v3, v0, Lcom/android/server/ipm/NapPreloadController$PreloadedPkgInfo;->pageBoost:Z

    if-ne v2, v3, :cond_32

    iget-wide v2, p0, Lcom/android/server/ipm/NapPreloadController$PreloadedPkgInfo;->batchTime:J

    iget-wide v4, v0, Lcom/android/server/ipm/NapPreloadController$PreloadedPkgInfo;->batchTime:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_32

    const/4 v1, 0x1

    goto :goto_33

    :cond_32
    nop

    .line 137
    :goto_33
    return v1

    .line 143
    .end local v0    # "other":Lcom/android/server/ipm/NapPreloadController$PreloadedPkgInfo;
    :cond_34
    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/ipm/NapPreloadController$PreloadedPkgInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/ipm/NapPreloadController$PreloadedPkgInfo;->userId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/ipm/NapPreloadController$PreloadedPkgInfo;->preloadType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/ipm/NapPreloadController$PreloadedPkgInfo;->pageBoost:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/ipm/NapPreloadController$PreloadedPkgInfo;->batchTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 113
    iget-object v0, p0, Lcom/android/server/ipm/NapPreloadController$PreloadedPkgInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 114
    iget v0, p0, Lcom/android/server/ipm/NapPreloadController$PreloadedPkgInfo;->userId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 115
    iget-object v0, p0, Lcom/android/server/ipm/NapPreloadController$PreloadedPkgInfo;->preloadType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 116
    iget-boolean v0, p0, Lcom/android/server/ipm/NapPreloadController$PreloadedPkgInfo;->pageBoost:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 117
    iget-wide v0, p0, Lcom/android/server/ipm/NapPreloadController$PreloadedPkgInfo;->batchTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 118
    return-void
.end method
