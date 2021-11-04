.class final Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl$ResetFailedAttemptsForUserRunnable;
.super Ljava/lang/Object;
.source "FaceService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ResetFailedAttemptsForUserRunnable"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;


# direct methods
.method private constructor <init>(Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;)V
    .registers 2

    .line 2509
    iput-object p1, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl$ResetFailedAttemptsForUserRunnable;->this$1:Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;Lcom/android/server/biometrics/face/FaceService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;
    .param p2, "x1"    # Lcom/android/server/biometrics/face/FaceService$1;

    .line 2509
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl$ResetFailedAttemptsForUserRunnable;-><init>(Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 2512
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl$ResetFailedAttemptsForUserRunnable;->this$1:Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;

    const/4 v1, 0x1

    # invokes: Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->resetFailedAttempts(Z)V
    invoke-static {v0, v1}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->access$1100(Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;Z)V

    .line 2513
    return-void
.end method
