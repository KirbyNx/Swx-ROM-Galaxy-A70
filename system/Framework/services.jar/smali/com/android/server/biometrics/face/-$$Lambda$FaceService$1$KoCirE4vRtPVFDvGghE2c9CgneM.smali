.class public final synthetic Lcom/android/server/biometrics/face/-$$Lambda$FaceService$1$KoCirE4vRtPVFDvGghE2c9CgneM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/face/FaceService$1;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/face/FaceService$1;IIII)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$1$KoCirE4vRtPVFDvGghE2c9CgneM;->f$0:Lcom/android/server/biometrics/face/FaceService$1;

    iput p2, p0, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$1$KoCirE4vRtPVFDvGghE2c9CgneM;->f$1:I

    iput p3, p0, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$1$KoCirE4vRtPVFDvGghE2c9CgneM;->f$2:I

    iput p4, p0, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$1$KoCirE4vRtPVFDvGghE2c9CgneM;->f$3:I

    iput p5, p0, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$1$KoCirE4vRtPVFDvGghE2c9CgneM;->f$4:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    iget-object v0, p0, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$1$KoCirE4vRtPVFDvGghE2c9CgneM;->f$0:Lcom/android/server/biometrics/face/FaceService$1;

    iget v1, p0, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$1$KoCirE4vRtPVFDvGghE2c9CgneM;->f$1:I

    iget v2, p0, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$1$KoCirE4vRtPVFDvGghE2c9CgneM;->f$2:I

    iget v3, p0, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$1$KoCirE4vRtPVFDvGghE2c9CgneM;->f$3:I

    iget v4, p0, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$1$KoCirE4vRtPVFDvGghE2c9CgneM;->f$4:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/biometrics/face/FaceService$1;->lambda$sehOnPreviewUpdated$9$FaceService$1(IIII)V

    return-void
.end method
