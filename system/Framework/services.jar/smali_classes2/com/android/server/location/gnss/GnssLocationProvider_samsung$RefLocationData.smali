.class Lcom/android/server/location/gnss/GnssLocationProvider_samsung$RefLocationData;
.super Ljava/lang/Object;
.source "GnssLocationProvider_samsung.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/gnss/GnssLocationProvider_samsung;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RefLocationData"
.end annotation


# instance fields
.field arfcn:I

.field cid:J

.field lac:I

.field mcc:I

.field mnc:I

.field networkType:I

.field pcid:I


# direct methods
.method private constructor <init>()V
    .registers 4

    .line 1186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1187
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung$RefLocationData;->mcc:I

    .line 1188
    iput v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung$RefLocationData;->mnc:I

    .line 1189
    iput v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung$RefLocationData;->networkType:I

    .line 1190
    iput v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung$RefLocationData;->lac:I

    .line 1191
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung$RefLocationData;->cid:J

    .line 1192
    iput v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung$RefLocationData;->pcid:I

    .line 1193
    iput v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung$RefLocationData;->arfcn:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/location/gnss/GnssLocationProvider_samsung$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/android/server/location/gnss/GnssLocationProvider_samsung$1;

    .line 1186
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung$RefLocationData;-><init>()V

    return-void
.end method
