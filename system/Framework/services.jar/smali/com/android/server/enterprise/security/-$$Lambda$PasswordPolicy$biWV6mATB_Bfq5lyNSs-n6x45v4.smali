.class public final synthetic Lcom/android/server/enterprise/security/-$$Lambda$PasswordPolicy$biWV6mATB_Bfq5lyNSs-n6x45v4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/enterprise/security/PasswordPolicy;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/enterprise/security/PasswordPolicy;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/security/-$$Lambda$PasswordPolicy$biWV6mATB_Bfq5lyNSs-n6x45v4;->f$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    iput p2, p0, Lcom/android/server/enterprise/security/-$$Lambda$PasswordPolicy$biWV6mATB_Bfq5lyNSs-n6x45v4;->f$1:I

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/enterprise/security/-$$Lambda$PasswordPolicy$biWV6mATB_Bfq5lyNSs-n6x45v4;->f$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    iget v1, p0, Lcom/android/server/enterprise/security/-$$Lambda$PasswordPolicy$biWV6mATB_Bfq5lyNSs-n6x45v4;->f$1:I

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/security/PasswordPolicy;->lambda$notifyPasswordPolicyOneLockChanged$61$PasswordPolicy(I)V

    return-void
.end method
