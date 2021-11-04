.class public final synthetic Lcom/android/server/biometrics/face/-$$Lambda$FaceService$1$-bIqr0Xgotsgi7BRoqLNe0KC2sE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/face/FaceService$1;

.field public final synthetic f$1:I

.field public final synthetic f$2:J

.field public final synthetic f$3:Z

.field public final synthetic f$4:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/face/FaceService$1;IJZLjava/util/ArrayList;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$1$-bIqr0Xgotsgi7BRoqLNe0KC2sE;->f$0:Lcom/android/server/biometrics/face/FaceService$1;

    iput p2, p0, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$1$-bIqr0Xgotsgi7BRoqLNe0KC2sE;->f$1:I

    iput-wide p3, p0, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$1$-bIqr0Xgotsgi7BRoqLNe0KC2sE;->f$2:J

    iput-boolean p5, p0, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$1$-bIqr0Xgotsgi7BRoqLNe0KC2sE;->f$3:Z

    iput-object p6, p0, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$1$-bIqr0Xgotsgi7BRoqLNe0KC2sE;->f$4:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    iget-object v0, p0, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$1$-bIqr0Xgotsgi7BRoqLNe0KC2sE;->f$0:Lcom/android/server/biometrics/face/FaceService$1;

    iget v1, p0, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$1$-bIqr0Xgotsgi7BRoqLNe0KC2sE;->f$1:I

    iget-wide v2, p0, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$1$-bIqr0Xgotsgi7BRoqLNe0KC2sE;->f$2:J

    iget-boolean v4, p0, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$1$-bIqr0Xgotsgi7BRoqLNe0KC2sE;->f$3:Z

    iget-object v5, p0, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$1$-bIqr0Xgotsgi7BRoqLNe0KC2sE;->f$4:Ljava/util/ArrayList;

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/biometrics/face/FaceService$1;->lambda$onAuthenticated$4$FaceService$1(IJZLjava/util/ArrayList;)V

    return-void
.end method
