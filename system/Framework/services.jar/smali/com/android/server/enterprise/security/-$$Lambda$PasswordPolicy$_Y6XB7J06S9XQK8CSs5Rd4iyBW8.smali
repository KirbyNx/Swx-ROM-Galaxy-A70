.class public final synthetic Lcom/android/server/enterprise/security/-$$Lambda$PasswordPolicy$_Y6XB7J06S9XQK8CSs5Rd4iyBW8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;


# instance fields
.field public final synthetic f$0:Lcom/android/server/enterprise/security/PasswordPolicy;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/content/ComponentName;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/enterprise/security/PasswordPolicy;ILandroid/content/ComponentName;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/security/-$$Lambda$PasswordPolicy$_Y6XB7J06S9XQK8CSs5Rd4iyBW8;->f$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    iput p2, p0, Lcom/android/server/enterprise/security/-$$Lambda$PasswordPolicy$_Y6XB7J06S9XQK8CSs5Rd4iyBW8;->f$1:I

    iput-object p3, p0, Lcom/android/server/enterprise/security/-$$Lambda$PasswordPolicy$_Y6XB7J06S9XQK8CSs5Rd4iyBW8;->f$2:Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public final getOrThrow()Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lcom/android/server/enterprise/security/-$$Lambda$PasswordPolicy$_Y6XB7J06S9XQK8CSs5Rd4iyBW8;->f$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    iget v1, p0, Lcom/android/server/enterprise/security/-$$Lambda$PasswordPolicy$_Y6XB7J06S9XQK8CSs5Rd4iyBW8;->f$1:I

    iget-object v2, p0, Lcom/android/server/enterprise/security/-$$Lambda$PasswordPolicy$_Y6XB7J06S9XQK8CSs5Rd4iyBW8;->f$2:Landroid/content/ComponentName;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/security/PasswordPolicy;->lambda$clearResetPasswordToken$47$PasswordPolicy(ILandroid/content/ComponentName;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
