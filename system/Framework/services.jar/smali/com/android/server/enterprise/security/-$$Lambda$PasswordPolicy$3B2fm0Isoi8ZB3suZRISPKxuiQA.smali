.class public final synthetic Lcom/android/server/enterprise/security/-$$Lambda$PasswordPolicy$3B2fm0Isoi8ZB3suZRISPKxuiQA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/enterprise/security/PasswordPolicy;

.field public final synthetic f$1:I

.field public final synthetic f$2:Z

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/enterprise/security/PasswordPolicy;IZZ)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/security/-$$Lambda$PasswordPolicy$3B2fm0Isoi8ZB3suZRISPKxuiQA;->f$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    iput p2, p0, Lcom/android/server/enterprise/security/-$$Lambda$PasswordPolicy$3B2fm0Isoi8ZB3suZRISPKxuiQA;->f$1:I

    iput-boolean p3, p0, Lcom/android/server/enterprise/security/-$$Lambda$PasswordPolicy$3B2fm0Isoi8ZB3suZRISPKxuiQA;->f$2:Z

    iput-boolean p4, p0, Lcom/android/server/enterprise/security/-$$Lambda$PasswordPolicy$3B2fm0Isoi8ZB3suZRISPKxuiQA;->f$3:Z

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .registers 5

    iget-object v0, p0, Lcom/android/server/enterprise/security/-$$Lambda$PasswordPolicy$3B2fm0Isoi8ZB3suZRISPKxuiQA;->f$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    iget v1, p0, Lcom/android/server/enterprise/security/-$$Lambda$PasswordPolicy$3B2fm0Isoi8ZB3suZRISPKxuiQA;->f$1:I

    iget-boolean v2, p0, Lcom/android/server/enterprise/security/-$$Lambda$PasswordPolicy$3B2fm0Isoi8ZB3suZRISPKxuiQA;->f$2:Z

    iget-boolean v3, p0, Lcom/android/server/enterprise/security/-$$Lambda$PasswordPolicy$3B2fm0Isoi8ZB3suZRISPKxuiQA;->f$3:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/enterprise/security/PasswordPolicy;->lambda$setAdminLockEnabledSystemUI$60$PasswordPolicy(IZZ)V

    return-void
.end method
