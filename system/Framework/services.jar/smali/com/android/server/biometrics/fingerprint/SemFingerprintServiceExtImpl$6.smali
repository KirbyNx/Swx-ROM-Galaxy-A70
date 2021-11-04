.class Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$6;
.super Ljava/lang/Object;
.source "SemFingerprintServiceExtImpl.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


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

    .line 1794
    iput-object p1, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$6;->this$0:Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 6
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "keyEvent"    # Landroid/view/KeyEvent;

    .line 1797
    const/4 v0, 0x4

    if-ne p2, v0, :cond_1c

    .line 1798
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$6;->this$0:Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;

    # getter for: Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mDialogForMatcherUpgrade:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->access$1300(Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 1799
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$6;->this$0:Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;

    # getter for: Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mDialogForMatcherUpgrade:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->access$1300(Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1800
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$6;->this$0:Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mDialogForMatcherUpgrade:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->access$1302(Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 1802
    :cond_1a
    const/4 v0, 0x1

    return v0

    .line 1804
    :cond_1c
    const/4 v0, 0x0

    return v0
.end method
