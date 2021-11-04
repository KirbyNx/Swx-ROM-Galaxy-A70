.class public final synthetic Lcom/android/server/biometrics/face/-$$Lambda$FaceService$9W7wQXewVhfZe14o9sLrWG5YLuA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$sehGetSecurityLevelCallback;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/biometrics/face/-$$Lambda$FaceService$9W7wQXewVhfZe14o9sLrWG5YLuA;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$9W7wQXewVhfZe14o9sLrWG5YLuA;

    invoke-direct {v0}, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$9W7wQXewVhfZe14o9sLrWG5YLuA;-><init>()V

    sput-object v0, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$9W7wQXewVhfZe14o9sLrWG5YLuA;->INSTANCE:Lcom/android/server/biometrics/face/-$$Lambda$FaceService$9W7wQXewVhfZe14o9sLrWG5YLuA;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onValues(II)V
    .registers 3

    invoke-static {p1, p2}, Lcom/android/server/biometrics/face/FaceService;->lambda$getFaceDaemon$1(II)V

    return-void
.end method
