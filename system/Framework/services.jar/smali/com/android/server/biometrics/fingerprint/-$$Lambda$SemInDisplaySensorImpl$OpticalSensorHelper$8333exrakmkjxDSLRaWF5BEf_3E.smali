.class public final synthetic Lcom/android/server/biometrics/fingerprint/-$$Lambda$SemInDisplaySensorImpl$OpticalSensorHelper$8333exrakmkjxDSLRaWF5BEf_3E;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$OpticalSensorHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$OpticalSensorHelper;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/fingerprint/-$$Lambda$SemInDisplaySensorImpl$OpticalSensorHelper$8333exrakmkjxDSLRaWF5BEf_3E;->f$0:Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$OpticalSensorHelper;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/-$$Lambda$SemInDisplaySensorImpl$OpticalSensorHelper$8333exrakmkjxDSLRaWF5BEf_3E;->f$0:Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$OpticalSensorHelper;

    invoke-virtual {v0}, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$OpticalSensorHelper;->lambda$writeMaxBrightnessInfo$2$SemInDisplaySensorImpl$OpticalSensorHelper()V

    return-void
.end method
