.class public final synthetic Lcom/android/server/location/gnss/-$$Lambda$GnssLocationProvider_samsung$pGlEKn-0yWxIPPcH_QrHzrQuUmY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/location/gnss/-$$Lambda$GnssLocationProvider_samsung$pGlEKn-0yWxIPPcH_QrHzrQuUmY;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/location/gnss/-$$Lambda$GnssLocationProvider_samsung$pGlEKn-0yWxIPPcH_QrHzrQuUmY;

    invoke-direct {v0}, Lcom/android/server/location/gnss/-$$Lambda$GnssLocationProvider_samsung$pGlEKn-0yWxIPPcH_QrHzrQuUmY;-><init>()V

    sput-object v0, Lcom/android/server/location/gnss/-$$Lambda$GnssLocationProvider_samsung$pGlEKn-0yWxIPPcH_QrHzrQuUmY;->INSTANCE:Lcom/android/server/location/gnss/-$$Lambda$GnssLocationProvider_samsung$pGlEKn-0yWxIPPcH_QrHzrQuUmY;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    invoke-static {}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->lambda$handleInitialize_samsung$2()V

    return-void
.end method
