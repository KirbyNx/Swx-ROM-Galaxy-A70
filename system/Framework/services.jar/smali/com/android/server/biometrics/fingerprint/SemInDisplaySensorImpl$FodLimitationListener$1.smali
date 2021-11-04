.class Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$FodLimitationListener$1;
.super Landroid/database/ContentObserver;
.source "SemInDisplaySensorImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$FodLimitationListener;->observe(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$FodLimitationListener;


# direct methods
.method constructor <init>(Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$FodLimitationListener;Landroid/os/Handler;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$FodLimitationListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 532
    iput-object p1, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$FodLimitationListener$1;->this$0:Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$FodLimitationListener;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 5
    .param p1, "selfChange"    # Z

    .line 535
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$FodLimitationListener$1;->this$0:Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$FodLimitationListener;

    # invokes: Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$FodLimitationListener;->updateValue()V
    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$FodLimitationListener;->access$700(Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$FodLimitationListener;)V

    .line 536
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$FodLimitationListener$1;->this$0:Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$FodLimitationListener;

    # getter for: Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$FodLimitationListener;->mIsOneHandModeRunning:Z
    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$FodLimitationListener;->access$800(Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$FodLimitationListener;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 537
    invoke-static {}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->getInjector()Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;

    move-result-object v0

    const/16 v1, 0x8

    const/16 v2, 0x1389

    .line 538
    invoke-virtual {v0, v1, v2}, Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;->handleError(II)V

    .line 541
    :cond_18
    return-void
.end method
