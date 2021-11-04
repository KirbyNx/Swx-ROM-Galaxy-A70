.class public final Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;
.super Ljava/lang/Object;
.source "BiometricService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/BiometricService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AuthenticatorWrapper"
.end annotation


# instance fields
.field public OEMStrength:I

.field public final id:I

.field public final impl:Landroid/hardware/biometrics/IBiometricAuthenticator;

.field private mIsUpdatedStrengthByDeviceConfig:Z

.field public final modality:I

.field private updatedStrength:I


# direct methods
.method constructor <init>(IIILandroid/hardware/biometrics/IBiometricAuthenticator;)V
    .registers 5
    .param p1, "id"    # I
    .param p2, "modality"    # I
    .param p3, "strength"    # I
    .param p4, "impl"    # Landroid/hardware/biometrics/IBiometricAuthenticator;

    .line 519
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 520
    iput p1, p0, Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;->id:I

    .line 521
    iput p2, p0, Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;->modality:I

    .line 522
    iput p3, p0, Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;->OEMStrength:I

    .line 523
    iput p3, p0, Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;->updatedStrength:I

    .line 524
    iput-object p4, p0, Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;->impl:Landroid/hardware/biometrics/IBiometricAuthenticator;

    .line 525
    return-void
.end method


# virtual methods
.method getActualStrength()I
    .registers 3

    .line 535
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;->semUpdateOemStrength()V

    .line 537
    iget v0, p0, Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;->OEMStrength:I

    iget v1, p0, Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;->updatedStrength:I

    or-int/2addr v0, v1

    return v0
.end method

.method isDowngraded()Z
    .registers 3

    .line 541
    iget v0, p0, Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;->OEMStrength:I

    iget v1, p0, Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;->updatedStrength:I

    if-eq v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method semUpdateOemStrength()V
    .registers 8

    .line 581
    const-string v0, "BiometricService"

    const/4 v1, 0x0

    .line 583
    .local v1, "securityLvl":I
    :try_start_3
    iget-object v2, p0, Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;->impl:Landroid/hardware/biometrics/IBiometricAuthenticator;

    invoke-interface {v2}, Landroid/hardware/biometrics/IBiometricAuthenticator;->semGetSecurityLevel()I

    move-result v2
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_9} :catch_b

    move v1, v2

    .line 586
    goto :goto_25

    .line 584
    :catch_b
    move-exception v2

    .line 585
    .local v2, "re":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "semUpdateOemStrength: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    .end local v2    # "re":Landroid/os/RemoteException;
    :goto_25
    if-nez v1, :cond_2e

    .line 588
    const-string/jumbo v2, "updateOemStrength: invalid security level"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    return-void

    .line 591
    :cond_2e
    const/4 v2, 0x0

    .line 592
    .local v2, "strength":I
    const/4 v3, 0x1

    if-eq v1, v3, :cond_3f

    const/4 v3, 0x2

    if-eq v1, v3, :cond_3c

    const/4 v3, 0x3

    if-eq v1, v3, :cond_39

    goto :goto_42

    .line 600
    :cond_39
    const/16 v2, 0xfff

    goto :goto_42

    .line 597
    :cond_3c
    const/16 v2, 0xff

    .line 598
    goto :goto_42

    .line 594
    :cond_3f
    const/16 v2, 0xf

    .line 595
    nop

    .line 603
    :goto_42
    if-eqz v2, :cond_89

    iget v3, p0, Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;->OEMStrength:I

    if-eq v2, v3, :cond_89

    .line 604
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateOemStrength: Before("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 605
    .local v3, "log":Ljava/lang/String;
    iput v2, p0, Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;->OEMStrength:I

    .line 606
    iget-boolean v5, p0, Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;->mIsUpdatedStrengthByDeviceConfig:Z

    if-nez v5, :cond_6b

    .line 607
    iput v2, p0, Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;->updatedStrength:I

    .line 609
    :cond_6b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " After("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 610
    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    .end local v3    # "log":Ljava/lang/String;
    :cond_89
    return-void
.end method

.method toDumpString()Ljava/lang/String;
    .registers 5

    .line 571
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 572
    .local v0, "dump":Ljava/lang/StringBuilder;
    iget v1, p0, Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;->modality:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;->OEMStrength:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 573
    iget v2, p0, Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;->OEMStrength:I

    iget v3, p0, Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;->updatedStrength:I

    if-eq v2, v3, :cond_25

    .line 574
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;->updatedStrength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 576
    :cond_25
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 577
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 561
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ID("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") OEMStrength: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;->OEMStrength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " updatedStrength: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;->updatedStrength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " modality "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;->modality:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " authenticator: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;->impl:Landroid/hardware/biometrics/IBiometricAuthenticator;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method updateStrength(I)V
    .registers 6
    .param p1, "newStrength"    # I

    .line 550
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateStrength: Before("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 551
    .local v0, "log":Ljava/lang/String;
    iput p1, p0, Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;->updatedStrength:I

    .line 552
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " After("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 553
    const-string v1, "BiometricService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;->mIsUpdatedStrengthByDeviceConfig:Z

    .line 557
    return-void
.end method
