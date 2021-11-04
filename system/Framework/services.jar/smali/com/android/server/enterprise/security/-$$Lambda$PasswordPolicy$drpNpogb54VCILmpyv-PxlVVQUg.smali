.class public final synthetic Lcom/android/server/enterprise/security/-$$Lambda$PasswordPolicy$drpNpogb54VCILmpyv-PxlVVQUg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/server/enterprise/security/PasswordPolicy$Injector;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/enterprise/security/PasswordPolicy$Injector;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/security/-$$Lambda$PasswordPolicy$drpNpogb54VCILmpyv-PxlVVQUg;->f$0:Lcom/android/server/enterprise/security/PasswordPolicy$Injector;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/android/server/enterprise/security/-$$Lambda$PasswordPolicy$drpNpogb54VCILmpyv-PxlVVQUg;->f$0:Lcom/android/server/enterprise/security/PasswordPolicy$Injector;

    check-cast p1, Ljava/lang/Integer;

    invoke-static {v0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->lambda$new$0(Lcom/android/server/enterprise/security/PasswordPolicy$Injector;Ljava/lang/Integer;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
