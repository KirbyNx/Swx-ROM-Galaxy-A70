.class Lcom/android/server/biometrics/BiometricUserState$1;
.super Ljava/lang/Object;
.source "BiometricUserState.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/BiometricUserState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/biometrics/BiometricUserState;


# direct methods
.method constructor <init>(Lcom/android/server/biometrics/BiometricUserState;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/biometrics/BiometricUserState;

    .line 53
    .local p0, "this":Lcom/android/server/biometrics/BiometricUserState$1;, "Lcom/android/server/biometrics/BiometricUserState$1;"
    iput-object p1, p0, Lcom/android/server/biometrics/BiometricUserState$1;->this$0:Lcom/android/server/biometrics/BiometricUserState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 56
    .local p0, "this":Lcom/android/server/biometrics/BiometricUserState$1;, "Lcom/android/server/biometrics/BiometricUserState$1;"
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricUserState$1;->this$0:Lcom/android/server/biometrics/BiometricUserState;

    invoke-virtual {v0}, Lcom/android/server/biometrics/BiometricUserState;->doWriteState()V

    .line 57
    return-void
.end method
