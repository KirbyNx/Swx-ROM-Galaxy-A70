.class public final synthetic Lcom/android/server/biometrics/face/-$$Lambda$FaceService$1$rN7zX0AiI5Gi0i98OfP_mPmJUQo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/face/FaceService$1;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/util/ArrayList;

.field public final synthetic f$3:J

.field public final synthetic f$4:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/face/FaceService$1;ILjava/util/ArrayList;JLjava/util/ArrayList;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$1$rN7zX0AiI5Gi0i98OfP_mPmJUQo;->f$0:Lcom/android/server/biometrics/face/FaceService$1;

    iput p2, p0, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$1$rN7zX0AiI5Gi0i98OfP_mPmJUQo;->f$1:I

    iput-object p3, p0, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$1$rN7zX0AiI5Gi0i98OfP_mPmJUQo;->f$2:Ljava/util/ArrayList;

    iput-wide p4, p0, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$1$rN7zX0AiI5Gi0i98OfP_mPmJUQo;->f$3:J

    iput-object p6, p0, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$1$rN7zX0AiI5Gi0i98OfP_mPmJUQo;->f$4:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    iget-object v0, p0, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$1$rN7zX0AiI5Gi0i98OfP_mPmJUQo;->f$0:Lcom/android/server/biometrics/face/FaceService$1;

    iget v1, p0, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$1$rN7zX0AiI5Gi0i98OfP_mPmJUQo;->f$1:I

    iget-object v2, p0, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$1$rN7zX0AiI5Gi0i98OfP_mPmJUQo;->f$2:Ljava/util/ArrayList;

    iget-wide v3, p0, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$1$rN7zX0AiI5Gi0i98OfP_mPmJUQo;->f$3:J

    iget-object v5, p0, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$1$rN7zX0AiI5Gi0i98OfP_mPmJUQo;->f$4:Ljava/util/ArrayList;

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/biometrics/face/FaceService$1;->lambda$sehOnAuthenticated$11$FaceService$1(ILjava/util/ArrayList;JLjava/util/ArrayList;)V

    return-void
.end method
