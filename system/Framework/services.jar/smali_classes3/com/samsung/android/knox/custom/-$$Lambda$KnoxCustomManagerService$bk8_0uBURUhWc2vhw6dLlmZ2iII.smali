.class public final synthetic Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$bk8_0uBURUhWc2vhw6dLlmZ2iII;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

.field public final synthetic f$1:I

.field public final synthetic f$2:Z

.field public final synthetic f$3:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;IZLjava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$bk8_0uBURUhWc2vhw6dLlmZ2iII;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    iput p2, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$bk8_0uBURUhWc2vhw6dLlmZ2iII;->f$1:I

    iput-boolean p3, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$bk8_0uBURUhWc2vhw6dLlmZ2iII;->f$2:Z

    iput-object p4, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$bk8_0uBURUhWc2vhw6dLlmZ2iII;->f$3:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getOrThrow()Ljava/lang/Object;
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$bk8_0uBURUhWc2vhw6dLlmZ2iII;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    iget v1, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$bk8_0uBURUhWc2vhw6dLlmZ2iII;->f$1:I

    iget-boolean v2, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$bk8_0uBURUhWc2vhw6dLlmZ2iII;->f$2:Z

    iget-object v3, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$bk8_0uBURUhWc2vhw6dLlmZ2iII;->f$3:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$setProKioskState$22$KnoxCustomManagerService(IZLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
