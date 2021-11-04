.class final Lcom/android/server/biometrics/BiometricServiceBase$UserTemplate;
.super Ljava/lang/Object;
.source "BiometricServiceBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/BiometricServiceBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "UserTemplate"
.end annotation


# instance fields
.field final mIdentifier:Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;

.field final mUserId:I

.field final synthetic this$0:Lcom/android/server/biometrics/BiometricServiceBase;


# direct methods
.method constructor <init>(Lcom/android/server/biometrics/BiometricServiceBase;Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V
    .registers 4
    .param p2, "identifier"    # Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;
    .param p3, "userId"    # I

    .line 722
    iput-object p1, p0, Lcom/android/server/biometrics/BiometricServiceBase$UserTemplate;->this$0:Lcom/android/server/biometrics/BiometricServiceBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 723
    iput-object p2, p0, Lcom/android/server/biometrics/BiometricServiceBase$UserTemplate;->mIdentifier:Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;

    .line 724
    iput p3, p0, Lcom/android/server/biometrics/BiometricServiceBase$UserTemplate;->mUserId:I

    .line 725
    return-void
.end method
