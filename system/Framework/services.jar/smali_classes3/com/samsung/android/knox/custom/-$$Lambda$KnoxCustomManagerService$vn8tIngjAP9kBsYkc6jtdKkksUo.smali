.class public final synthetic Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$vn8tIngjAP9kBsYkc6jtdKkksUo;
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

    iput-object p1, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$vn8tIngjAP9kBsYkc6jtdKkksUo;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    return-void
.end method


# virtual methods
.method public final getOrThrow()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$vn8tIngjAP9kBsYkc6jtdKkksUo;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-virtual {v0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$getZeroPageState$139$KnoxCustomManagerService()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
