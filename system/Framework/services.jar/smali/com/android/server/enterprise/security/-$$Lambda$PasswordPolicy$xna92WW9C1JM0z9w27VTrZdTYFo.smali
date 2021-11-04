.class public final synthetic Lcom/android/server/enterprise/security/-$$Lambda$PasswordPolicy$xna92WW9C1JM0z9w27VTrZdTYFo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/enterprise/security/PasswordPolicy;

.field public final synthetic f$1:I

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/enterprise/security/PasswordPolicy;IZ)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/security/-$$Lambda$PasswordPolicy$xna92WW9C1JM0z9w27VTrZdTYFo;->f$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    iput p2, p0, Lcom/android/server/enterprise/security/-$$Lambda$PasswordPolicy$xna92WW9C1JM0z9w27VTrZdTYFo;->f$1:I

    iput-boolean p3, p0, Lcom/android/server/enterprise/security/-$$Lambda$PasswordPolicy$xna92WW9C1JM0z9w27VTrZdTYFo;->f$2:Z

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/enterprise/security/-$$Lambda$PasswordPolicy$xna92WW9C1JM0z9w27VTrZdTYFo;->f$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    iget v1, p0, Lcom/android/server/enterprise/security/-$$Lambda$PasswordPolicy$xna92WW9C1JM0z9w27VTrZdTYFo;->f$1:I

    iget-boolean v2, p0, Lcom/android/server/enterprise/security/-$$Lambda$PasswordPolicy$xna92WW9C1JM0z9w27VTrZdTYFo;->f$2:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/security/PasswordPolicy;->lambda$setPasswordVisibilityEnabled$13$PasswordPolicy(IZ)V

    return-void
.end method
