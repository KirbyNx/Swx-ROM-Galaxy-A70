.class public final synthetic Lcom/android/server/biometrics/fingerprint/-$$Lambda$SemFingerprintServiceExtImpl$ItrVm4s3aMiokLQjUMQ_ChFL8lQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/biometrics/fingerprint/-$$Lambda$SemFingerprintServiceExtImpl$ItrVm4s3aMiokLQjUMQ_ChFL8lQ;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/biometrics/fingerprint/-$$Lambda$SemFingerprintServiceExtImpl$ItrVm4s3aMiokLQjUMQ_ChFL8lQ;

    invoke-direct {v0}, Lcom/android/server/biometrics/fingerprint/-$$Lambda$SemFingerprintServiceExtImpl$ItrVm4s3aMiokLQjUMQ_ChFL8lQ;-><init>()V

    sput-object v0, Lcom/android/server/biometrics/fingerprint/-$$Lambda$SemFingerprintServiceExtImpl$ItrVm4s3aMiokLQjUMQ_ChFL8lQ;->INSTANCE:Lcom/android/server/biometrics/fingerprint/-$$Lambda$SemFingerprintServiceExtImpl$ItrVm4s3aMiokLQjUMQ_ChFL8lQ;

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

    invoke-static {}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->lambda$handleAcquired$10()V

    return-void
.end method
