.class public final synthetic Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$S4yeuJkxlP63BcMJzq_fuEgSELM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$S4yeuJkxlP63BcMJzq_fuEgSELM;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    return-void
.end method


# virtual methods
.method public final getOrThrow()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$S4yeuJkxlP63BcMJzq_fuEgSELM;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-virtual {v0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$launchProkioskHomeActivity$155$KnoxCustomManagerService()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
