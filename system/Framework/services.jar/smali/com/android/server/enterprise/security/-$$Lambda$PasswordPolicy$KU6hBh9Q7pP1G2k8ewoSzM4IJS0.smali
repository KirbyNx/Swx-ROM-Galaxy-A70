.class public final synthetic Lcom/android/server/enterprise/security/-$$Lambda$PasswordPolicy$KU6hBh9Q7pP1G2k8ewoSzM4IJS0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;


# instance fields
.field public final synthetic f$0:Lcom/android/server/enterprise/security/PasswordPolicy;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/content/ComponentName;

.field public final synthetic f$3:[B


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/enterprise/security/PasswordPolicy;ILandroid/content/ComponentName;[B)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/security/-$$Lambda$PasswordPolicy$KU6hBh9Q7pP1G2k8ewoSzM4IJS0;->f$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    iput p2, p0, Lcom/android/server/enterprise/security/-$$Lambda$PasswordPolicy$KU6hBh9Q7pP1G2k8ewoSzM4IJS0;->f$1:I

    iput-object p3, p0, Lcom/android/server/enterprise/security/-$$Lambda$PasswordPolicy$KU6hBh9Q7pP1G2k8ewoSzM4IJS0;->f$2:Landroid/content/ComponentName;

    iput-object p4, p0, Lcom/android/server/enterprise/security/-$$Lambda$PasswordPolicy$KU6hBh9Q7pP1G2k8ewoSzM4IJS0;->f$3:[B

    return-void
.end method


# virtual methods
.method public final getOrThrow()Ljava/lang/Object;
    .registers 5

    iget-object v0, p0, Lcom/android/server/enterprise/security/-$$Lambda$PasswordPolicy$KU6hBh9Q7pP1G2k8ewoSzM4IJS0;->f$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    iget v1, p0, Lcom/android/server/enterprise/security/-$$Lambda$PasswordPolicy$KU6hBh9Q7pP1G2k8ewoSzM4IJS0;->f$1:I

    iget-object v2, p0, Lcom/android/server/enterprise/security/-$$Lambda$PasswordPolicy$KU6hBh9Q7pP1G2k8ewoSzM4IJS0;->f$2:Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/android/server/enterprise/security/-$$Lambda$PasswordPolicy$KU6hBh9Q7pP1G2k8ewoSzM4IJS0;->f$3:[B

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/enterprise/security/PasswordPolicy;->lambda$setResetPasswordToken$46$PasswordPolicy(ILandroid/content/ComponentName;[B)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
