.class public final synthetic Lcom/android/server/biometrics/face/-$$Lambda$FaceService$ChxEXBqBw6Fy97ngufP6rUDusSU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$ChxEXBqBw6Fy97ngufP6rUDusSU;->f$0:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget v0, p0, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$ChxEXBqBw6Fy97ngufP6rUDusSU;->f$0:I

    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService;->lambda$onBootPhase$2(I)V

    return-void
.end method
