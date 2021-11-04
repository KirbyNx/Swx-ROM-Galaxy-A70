.class public final synthetic Lcom/android/server/biometrics/face/-$$Lambda$FaceService$1$5KX0mKSLUDfwmHyM1U0_Ru2XGJA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/face/FaceService$1;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/face/FaceService$1;IIIJ)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$1$5KX0mKSLUDfwmHyM1U0_Ru2XGJA;->f$0:Lcom/android/server/biometrics/face/FaceService$1;

    iput p2, p0, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$1$5KX0mKSLUDfwmHyM1U0_Ru2XGJA;->f$1:I

    iput p3, p0, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$1$5KX0mKSLUDfwmHyM1U0_Ru2XGJA;->f$2:I

    iput p4, p0, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$1$5KX0mKSLUDfwmHyM1U0_Ru2XGJA;->f$3:I

    iput-wide p5, p0, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$1$5KX0mKSLUDfwmHyM1U0_Ru2XGJA;->f$4:J

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    iget-object v0, p0, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$1$5KX0mKSLUDfwmHyM1U0_Ru2XGJA;->f$0:Lcom/android/server/biometrics/face/FaceService$1;

    iget v1, p0, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$1$5KX0mKSLUDfwmHyM1U0_Ru2XGJA;->f$1:I

    iget v2, p0, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$1$5KX0mKSLUDfwmHyM1U0_Ru2XGJA;->f$2:I

    iget v3, p0, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$1$5KX0mKSLUDfwmHyM1U0_Ru2XGJA;->f$3:I

    iget-wide v4, p0, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$1$5KX0mKSLUDfwmHyM1U0_Ru2XGJA;->f$4:J

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/biometrics/face/FaceService$1;->lambda$onEnrollResult$0$FaceService$1(IIIJ)V

    return-void
.end method
