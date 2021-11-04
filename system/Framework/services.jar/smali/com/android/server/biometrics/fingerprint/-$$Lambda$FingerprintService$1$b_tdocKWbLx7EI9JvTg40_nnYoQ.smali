.class public final synthetic Lcom/android/server/biometrics/fingerprint/-$$Lambda$FingerprintService$1$b_tdocKWbLx7EI9JvTg40_nnYoQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/fingerprint/FingerprintService$1;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/fingerprint/FingerprintService$1;IIJ)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/fingerprint/-$$Lambda$FingerprintService$1$b_tdocKWbLx7EI9JvTg40_nnYoQ;->f$0:Lcom/android/server/biometrics/fingerprint/FingerprintService$1;

    iput p2, p0, Lcom/android/server/biometrics/fingerprint/-$$Lambda$FingerprintService$1$b_tdocKWbLx7EI9JvTg40_nnYoQ;->f$1:I

    iput p3, p0, Lcom/android/server/biometrics/fingerprint/-$$Lambda$FingerprintService$1$b_tdocKWbLx7EI9JvTg40_nnYoQ;->f$2:I

    iput-wide p4, p0, Lcom/android/server/biometrics/fingerprint/-$$Lambda$FingerprintService$1$b_tdocKWbLx7EI9JvTg40_nnYoQ;->f$3:J

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/-$$Lambda$FingerprintService$1$b_tdocKWbLx7EI9JvTg40_nnYoQ;->f$0:Lcom/android/server/biometrics/fingerprint/FingerprintService$1;

    iget v1, p0, Lcom/android/server/biometrics/fingerprint/-$$Lambda$FingerprintService$1$b_tdocKWbLx7EI9JvTg40_nnYoQ;->f$1:I

    iget v2, p0, Lcom/android/server/biometrics/fingerprint/-$$Lambda$FingerprintService$1$b_tdocKWbLx7EI9JvTg40_nnYoQ;->f$2:I

    iget-wide v3, p0, Lcom/android/server/biometrics/fingerprint/-$$Lambda$FingerprintService$1$b_tdocKWbLx7EI9JvTg40_nnYoQ;->f$3:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/biometrics/fingerprint/FingerprintService$1;->lambda$onAcquired_2_2$1$FingerprintService$1(IIJ)V

    return-void
.end method
