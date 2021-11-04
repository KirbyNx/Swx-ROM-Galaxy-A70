.class public final synthetic Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$Xg-uJ4nB0LKXvlsFr8S2VmKtD24;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;Ljava/lang/String;Z)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$Xg-uJ4nB0LKXvlsFr8S2VmKtD24;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    iput-object p2, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$Xg-uJ4nB0LKXvlsFr8S2VmKtD24;->f$1:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$Xg-uJ4nB0LKXvlsFr8S2VmKtD24;->f$2:Z

    return-void
.end method


# virtual methods
.method public final getOrThrow()Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$Xg-uJ4nB0LKXvlsFr8S2VmKtD24;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    iget-object v1, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$Xg-uJ4nB0LKXvlsFr8S2VmKtD24;->f$1:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$Xg-uJ4nB0LKXvlsFr8S2VmKtD24;->f$2:Z

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$setInputMethod$40$KnoxCustomManagerService(Ljava/lang/String;Z)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
