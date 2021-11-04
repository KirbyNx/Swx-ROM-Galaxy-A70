.class public final synthetic Lcom/android/server/biometrics/face/-$$Lambda$FaceService$FaceServiceWrapper$5rWINC6iWilrZtwzmbTQ_gq69DU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$FaceServiceWrapper$5rWINC6iWilrZtwzmbTQ_gq69DU;->f$0:Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$FaceServiceWrapper$5rWINC6iWilrZtwzmbTQ_gq69DU;->f$0:Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;

    invoke-virtual {v0}, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->lambda$semResumeAuth$7$FaceService$FaceServiceWrapper()V

    return-void
.end method
