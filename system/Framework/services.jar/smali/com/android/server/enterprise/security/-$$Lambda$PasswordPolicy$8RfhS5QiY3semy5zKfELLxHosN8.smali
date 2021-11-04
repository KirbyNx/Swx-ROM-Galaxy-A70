.class public final synthetic Lcom/android/server/enterprise/security/-$$Lambda$PasswordPolicy$8RfhS5QiY3semy5zKfELLxHosN8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;


# instance fields
.field public final synthetic f$0:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Landroid/os/Bundle;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/security/-$$Lambda$PasswordPolicy$8RfhS5QiY3semy5zKfELLxHosN8;->f$0:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final getOrThrow()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/android/server/enterprise/security/-$$Lambda$PasswordPolicy$8RfhS5QiY3semy5zKfELLxHosN8;->f$0:Landroid/os/Bundle;

    invoke-static {v0}, Lcom/android/server/enterprise/security/PasswordPolicy;->lambda$lock$14(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
