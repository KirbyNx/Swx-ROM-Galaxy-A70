.class public final synthetic Lcom/android/server/biometrics/face/-$$Lambda$FaceService$1$CmihN_QSZoIUet5wm3MGDPVXpQs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/face/FaceService$1;

.field public final synthetic f$1:Ljava/util/ArrayList;

.field public final synthetic f$2:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/face/FaceService$1;Ljava/util/ArrayList;J)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$1$CmihN_QSZoIUet5wm3MGDPVXpQs;->f$0:Lcom/android/server/biometrics/face/FaceService$1;

    iput-object p2, p0, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$1$CmihN_QSZoIUet5wm3MGDPVXpQs;->f$1:Ljava/util/ArrayList;

    iput-wide p3, p0, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$1$CmihN_QSZoIUet5wm3MGDPVXpQs;->f$2:J

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$1$CmihN_QSZoIUet5wm3MGDPVXpQs;->f$0:Lcom/android/server/biometrics/face/FaceService$1;

    iget-object v1, p0, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$1$CmihN_QSZoIUet5wm3MGDPVXpQs;->f$1:Ljava/util/ArrayList;

    iget-wide v2, p0, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$1$CmihN_QSZoIUet5wm3MGDPVXpQs;->f$2:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/biometrics/face/FaceService$1;->lambda$onRemoved$6$FaceService$1(Ljava/util/ArrayList;J)V

    return-void
.end method
