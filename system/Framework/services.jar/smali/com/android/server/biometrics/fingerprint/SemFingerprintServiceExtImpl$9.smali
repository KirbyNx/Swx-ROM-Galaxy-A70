.class Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$9;
.super Ljava/lang/Object;
.source "SemFingerprintServiceExtImpl.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->sendBroadcastForAvailableNewMatcher()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;


# direct methods
.method constructor <init>(Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;

    .line 1765
    iput-object p1, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$9;->this$0:Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 4
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;

    .line 1768
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$9;->this$0:Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;

    # getter for: Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mDialogForMatcherUpgrade:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->access$1300(Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 1769
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$9;->this$0:Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mDialogForMatcherUpgrade:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->access$1302(Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 1771
    :cond_e
    const-string v0, "FingerprintService"

    const-string v1, "Dismiss"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1772
    return-void
.end method
