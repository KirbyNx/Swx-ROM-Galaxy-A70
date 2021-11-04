.class public final synthetic Lcom/android/server/enterprise/security/-$$Lambda$PasswordPolicy$PMk7gjx4IVCyode6_XWnle8IQpA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(III)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/enterprise/security/-$$Lambda$PasswordPolicy$PMk7gjx4IVCyode6_XWnle8IQpA;->f$0:I

    iput p2, p0, Lcom/android/server/enterprise/security/-$$Lambda$PasswordPolicy$PMk7gjx4IVCyode6_XWnle8IQpA;->f$1:I

    iput p3, p0, Lcom/android/server/enterprise/security/-$$Lambda$PasswordPolicy$PMk7gjx4IVCyode6_XWnle8IQpA;->f$2:I

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .registers 4

    iget v0, p0, Lcom/android/server/enterprise/security/-$$Lambda$PasswordPolicy$PMk7gjx4IVCyode6_XWnle8IQpA;->f$0:I

    iget v1, p0, Lcom/android/server/enterprise/security/-$$Lambda$PasswordPolicy$PMk7gjx4IVCyode6_XWnle8IQpA;->f$1:I

    iget v2, p0, Lcom/android/server/enterprise/security/-$$Lambda$PasswordPolicy$PMk7gjx4IVCyode6_XWnle8IQpA;->f$2:I

    invoke-static {v0, v1, v2}, Lcom/android/server/enterprise/security/PasswordPolicy;->lambda$setMaximumNumericSequenceLength$7(III)V

    return-void
.end method
