.class public final synthetic Lcom/android/server/enterprise/security/-$$Lambda$PasswordPolicy$VVtq1SU0EU1z39WOHaO7qiQigbA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/enterprise/security/PasswordPolicy;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/enterprise/security/PasswordPolicy;II)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/security/-$$Lambda$PasswordPolicy$VVtq1SU0EU1z39WOHaO7qiQigbA;->f$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    iput p2, p0, Lcom/android/server/enterprise/security/-$$Lambda$PasswordPolicy$VVtq1SU0EU1z39WOHaO7qiQigbA;->f$1:I

    iput p3, p0, Lcom/android/server/enterprise/security/-$$Lambda$PasswordPolicy$VVtq1SU0EU1z39WOHaO7qiQigbA;->f$2:I

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/enterprise/security/-$$Lambda$PasswordPolicy$VVtq1SU0EU1z39WOHaO7qiQigbA;->f$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    iget v1, p0, Lcom/android/server/enterprise/security/-$$Lambda$PasswordPolicy$VVtq1SU0EU1z39WOHaO7qiQigbA;->f$1:I

    iget v2, p0, Lcom/android/server/enterprise/security/-$$Lambda$PasswordPolicy$VVtq1SU0EU1z39WOHaO7qiQigbA;->f$2:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/security/PasswordPolicy;->lambda$setMaximumFailedPasswordsForDisableSystemUI$56$PasswordPolicy(II)V

    return-void
.end method
