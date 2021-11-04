.class Lcom/android/server/biometrics/SemBiometricBoostingManager$Releaser;
.super Ljava/lang/Object;
.source "SemBiometricBoostingManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/SemBiometricBoostingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Releaser"
.end annotation


# instance fields
.field private mBiometricType:I

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "biometricType"    # I

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/android/server/biometrics/SemBiometricBoostingManager$Releaser;->mContext:Landroid/content/Context;

    .line 33
    iput p2, p0, Lcom/android/server/biometrics/SemBiometricBoostingManager$Releaser;->mBiometricType:I

    .line 34
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 38
    invoke-static {}, Lcom/android/server/biometrics/SemBiometricBoostingManager;->getInstance()Lcom/android/server/biometrics/SemBiometricBoostingManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/biometrics/SemBiometricBoostingManager$Releaser;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/server/biometrics/SemBiometricBoostingManager$Releaser;->mBiometricType:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/biometrics/SemBiometricBoostingManager;->release(Landroid/content/Context;I)V

    .line 39
    return-void
.end method
