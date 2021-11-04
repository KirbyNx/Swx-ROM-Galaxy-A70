.class public final synthetic Lcom/android/server/enterprise/security/-$$Lambda$PasswordPolicy$oSqjFV_qwkhIo-JVPMxkwK6XTPI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/enterprise/security/PasswordPolicy;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/enterprise/security/PasswordPolicy;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/security/-$$Lambda$PasswordPolicy$oSqjFV_qwkhIo-JVPMxkwK6XTPI;->f$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/enterprise/security/-$$Lambda$PasswordPolicy$oSqjFV_qwkhIo-JVPMxkwK6XTPI;->f$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    invoke-virtual {v0}, Lcom/android/server/enterprise/security/PasswordPolicy;->lambda$registerDexBlocker$62$PasswordPolicy()V

    return-void
.end method
