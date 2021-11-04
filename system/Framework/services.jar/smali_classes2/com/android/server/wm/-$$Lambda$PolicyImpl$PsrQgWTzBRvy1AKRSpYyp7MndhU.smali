.class public final synthetic Lcom/android/server/wm/-$$Lambda$PolicyImpl$PsrQgWTzBRvy1AKRSpYyp7MndhU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/-$$Lambda$PolicyImpl$PsrQgWTzBRvy1AKRSpYyp7MndhU;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/wm/-$$Lambda$PolicyImpl$PsrQgWTzBRvy1AKRSpYyp7MndhU;

    invoke-direct {v0}, Lcom/android/server/wm/-$$Lambda$PolicyImpl$PsrQgWTzBRvy1AKRSpYyp7MndhU;-><init>()V

    sput-object v0, Lcom/android/server/wm/-$$Lambda$PolicyImpl$PsrQgWTzBRvy1AKRSpYyp7MndhU;->INSTANCE:Lcom/android/server/wm/-$$Lambda$PolicyImpl$PsrQgWTzBRvy1AKRSpYyp7MndhU;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/android/server/wm/PackageConfiguration;

    invoke-static {p1}, Lcom/android/server/wm/PolicyImpl;->lambda$updatePackageConfigurationsIfNeeded$3(Lcom/android/server/wm/PackageConfiguration;)V

    return-void
.end method
