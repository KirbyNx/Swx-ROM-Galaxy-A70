.class Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$GestureManager$1;
.super Landroid/database/ContentObserver;
.source "SemFingerprintServiceExtImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$GestureManager;-><init>(Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$GestureManager;


# direct methods
.method constructor <init>(Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$GestureManager;Landroid/os/Handler;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$GestureManager;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 1911
    iput-object p1, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$GestureManager$1;->this$0:Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$GestureManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 4
    .param p1, "selfChange"    # Z

    .line 1914
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$GestureManager$1;->this$0:Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$GestureManager;

    invoke-virtual {v0}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$GestureManager;->updateValue()V

    .line 1915
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$GestureManager$1;->this$0:Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$GestureManager;

    iget-boolean v1, v0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$GestureManager;->mIsEnabledFpMotion:Z

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$GestureManager;->handleGestureMode(Z)V

    .line 1916
    return-void
.end method
