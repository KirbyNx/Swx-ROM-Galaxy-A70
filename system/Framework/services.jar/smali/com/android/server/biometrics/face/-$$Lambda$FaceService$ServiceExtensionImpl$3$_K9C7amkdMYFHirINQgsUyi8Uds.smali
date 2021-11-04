.class public final synthetic Lcom/android/server/biometrics/face/-$$Lambda$FaceService$ServiceExtensionImpl$3$_K9C7amkdMYFHirINQgsUyi8Uds;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl$3;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl$3;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$ServiceExtensionImpl$3$_K9C7amkdMYFHirINQgsUyi8Uds;->f$0:Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl$3;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$ServiceExtensionImpl$3$_K9C7amkdMYFHirINQgsUyi8Uds;->f$0:Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl$3;

    invoke-virtual {v0}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl$3;->lambda$onOrientationChanged$0$FaceService$ServiceExtensionImpl$3()V

    return-void
.end method
