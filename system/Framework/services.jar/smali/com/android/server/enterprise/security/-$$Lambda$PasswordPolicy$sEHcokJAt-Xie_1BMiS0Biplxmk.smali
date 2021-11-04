.class public final synthetic Lcom/android/server/enterprise/security/-$$Lambda$PasswordPolicy$sEHcokJAt-Xie_1BMiS0Biplxmk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Landroid/os/Bundle;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/security/-$$Lambda$PasswordPolicy$sEHcokJAt-Xie_1BMiS0Biplxmk;->f$0:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/enterprise/security/-$$Lambda$PasswordPolicy$sEHcokJAt-Xie_1BMiS0Biplxmk;->f$0:Landroid/os/Bundle;

    invoke-static {v0}, Lcom/android/server/enterprise/security/PasswordPolicy;->lambda$postPwdResetEventToPersona$3(Landroid/os/Bundle;)V

    return-void
.end method
