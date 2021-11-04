.class Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;
.super Ljava/lang/Object;
.source "GnssLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/gnss/GnssLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SvStatusInfo"
.end annotation


# instance fields
.field private mBasebandCn0s:[F

.field private mCn0s:[F

.field private mSvAzimuths:[F

.field private mSvCarrierFreqs:[F

.field private mSvCount:I

.field private mSvElevations:[F

.field private mSvidWithFlags:[I


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1680
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/location/gnss/GnssLocationProvider$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/android/server/location/gnss/GnssLocationProvider$1;

    .line 1680
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;-><init>()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;

    .line 1680
    iget v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;->mSvCount:I

    return v0
.end method

.method static synthetic access$1202(Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;
    .param p1, "x1"    # I

    .line 1680
    iput p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;->mSvCount:I

    return p1
.end method

.method static synthetic access$1300(Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;)[I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;

    .line 1680
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;->mSvidWithFlags:[I

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;[I)[I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;
    .param p1, "x1"    # [I

    .line 1680
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;->mSvidWithFlags:[I

    return-object p1
.end method

.method static synthetic access$1400(Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;)[F
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;

    .line 1680
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;->mCn0s:[F

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;[F)[F
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;
    .param p1, "x1"    # [F

    .line 1680
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;->mCn0s:[F

    return-object p1
.end method

.method static synthetic access$1500(Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;)[F
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;

    .line 1680
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;->mSvElevations:[F

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;[F)[F
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;
    .param p1, "x1"    # [F

    .line 1680
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;->mSvElevations:[F

    return-object p1
.end method

.method static synthetic access$1600(Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;)[F
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;

    .line 1680
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;->mSvAzimuths:[F

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;[F)[F
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;
    .param p1, "x1"    # [F

    .line 1680
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;->mSvAzimuths:[F

    return-object p1
.end method

.method static synthetic access$1700(Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;)[F
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;

    .line 1680
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;->mSvCarrierFreqs:[F

    return-object v0
.end method

.method static synthetic access$1702(Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;[F)[F
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;
    .param p1, "x1"    # [F

    .line 1680
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;->mSvCarrierFreqs:[F

    return-object p1
.end method

.method static synthetic access$1800(Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;)[F
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;

    .line 1680
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;->mBasebandCn0s:[F

    return-object v0
.end method

.method static synthetic access$1802(Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;[F)[F
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;
    .param p1, "x1"    # [F

    .line 1680
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;->mBasebandCn0s:[F

    return-object p1
.end method
