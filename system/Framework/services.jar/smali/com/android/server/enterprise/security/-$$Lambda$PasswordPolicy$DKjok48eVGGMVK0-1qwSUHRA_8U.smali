.class public final synthetic Lcom/android/server/enterprise/security/-$$Lambda$PasswordPolicy$DKjok48eVGGMVK0-1qwSUHRA_8U;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;


# instance fields
.field public final synthetic f$0:Lcom/android/server/enterprise/security/PasswordPolicy;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/enterprise/security/PasswordPolicy;ILjava/lang/String;I)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/security/-$$Lambda$PasswordPolicy$DKjok48eVGGMVK0-1qwSUHRA_8U;->f$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    iput p2, p0, Lcom/android/server/enterprise/security/-$$Lambda$PasswordPolicy$DKjok48eVGGMVK0-1qwSUHRA_8U;->f$1:I

    iput-object p3, p0, Lcom/android/server/enterprise/security/-$$Lambda$PasswordPolicy$DKjok48eVGGMVK0-1qwSUHRA_8U;->f$2:Ljava/lang/String;

    iput p4, p0, Lcom/android/server/enterprise/security/-$$Lambda$PasswordPolicy$DKjok48eVGGMVK0-1qwSUHRA_8U;->f$3:I

    return-void
.end method


# virtual methods
.method public final getOrThrow()Ljava/lang/Object;
    .registers 5

    iget-object v0, p0, Lcom/android/server/enterprise/security/-$$Lambda$PasswordPolicy$DKjok48eVGGMVK0-1qwSUHRA_8U;->f$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    iget v1, p0, Lcom/android/server/enterprise/security/-$$Lambda$PasswordPolicy$DKjok48eVGGMVK0-1qwSUHRA_8U;->f$1:I

    iget-object v2, p0, Lcom/android/server/enterprise/security/-$$Lambda$PasswordPolicy$DKjok48eVGGMVK0-1qwSUHRA_8U;->f$2:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/enterprise/security/-$$Lambda$PasswordPolicy$DKjok48eVGGMVK0-1qwSUHRA_8U;->f$3:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/enterprise/security/PasswordPolicy;->lambda$resetPassword$44$PasswordPolicy(ILjava/lang/String;I)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
