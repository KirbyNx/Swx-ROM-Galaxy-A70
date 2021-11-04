.class public final synthetic Landroid/sysprop/-$$Lambda$SurfaceFlingerProperties$uEcQnNtGA6nu3Sq3OLtSVMFDQrc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Landroid/sysprop/-$$Lambda$SurfaceFlingerProperties$uEcQnNtGA6nu3Sq3OLtSVMFDQrc;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/sysprop/-$$Lambda$SurfaceFlingerProperties$uEcQnNtGA6nu3Sq3OLtSVMFDQrc;

    invoke-direct {v0}, Landroid/sysprop/-$$Lambda$SurfaceFlingerProperties$uEcQnNtGA6nu3Sq3OLtSVMFDQrc;-><init>()V

    sput-object v0, Landroid/sysprop/-$$Lambda$SurfaceFlingerProperties$uEcQnNtGA6nu3Sq3OLtSVMFDQrc;->INSTANCE:Landroid/sysprop/-$$Lambda$SurfaceFlingerProperties$uEcQnNtGA6nu3Sq3OLtSVMFDQrc;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/sysprop/SurfaceFlingerProperties;->lambda$display_primary_white$3(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method
