.class Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$7;
.super Ljava/lang/Object;
.source "SemFingerprintServiceExtImpl.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

    .line 1779
    iput-object p1, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$7;->this$0:Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 8
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .line 1783
    const-string v0, "FingerprintService"

    :try_start_2
    iget-object v1, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$7;->this$0:Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;

    # getter for: Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mIsOwner:Z
    invoke-static {v1}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->access$1400(Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 1784
    # getter for: Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->access$1200()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$7;->this$0:Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;

    # getter for: Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mIntentForMatcherUpgrade:Landroid/content/Intent;
    invoke-static {v2}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->access$1500(Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_38

    .line 1785
    :cond_18
    iget-object v1, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$7;->this$0:Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;

    # getter for: Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mIsWorkspace:Z
    invoke-static {v1}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->access$1600(Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 1786
    # getter for: Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->access$1200()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$7;->this$0:Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;

    # getter for: Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mIntentForMatcherUpgrade:Landroid/content/Intent;
    invoke-static {v2}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->access$1500(Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;)Landroid/content/Intent;

    move-result-object v2

    new-instance v3, Landroid/os/UserHandle;

    iget-object v4, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$7;->this$0:Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;

    # getter for: Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mWorkspaceId:I
    invoke-static {v4}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->access$1700(Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;)I

    move-result v4

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_38} :catch_39

    .line 1790
    :cond_38
    :goto_38
    goto :goto_53

    .line 1788
    :catch_39
    move-exception v1

    .line 1789
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onClick: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1791
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_53
    const-string v1, "Remove and register"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1792
    return-void
.end method
