.class public final synthetic Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$gJvq6SA23-KDdwte4ikUNhIA0IA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;Ljava/lang/String;III)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$gJvq6SA23-KDdwte4ikUNhIA0IA;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    iput-object p2, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$gJvq6SA23-KDdwte4ikUNhIA0IA;->f$1:Ljava/lang/String;

    iput p3, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$gJvq6SA23-KDdwte4ikUNhIA0IA;->f$2:I

    iput p4, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$gJvq6SA23-KDdwte4ikUNhIA0IA;->f$3:I

    iput p5, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$gJvq6SA23-KDdwte4ikUNhIA0IA;->f$4:I

    return-void
.end method


# virtual methods
.method public final getOrThrow()Ljava/lang/Object;
    .registers 6

    iget-object v0, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$gJvq6SA23-KDdwte4ikUNhIA0IA;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    iget-object v1, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$gJvq6SA23-KDdwte4ikUNhIA0IA;->f$1:Ljava/lang/String;

    iget v2, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$gJvq6SA23-KDdwte4ikUNhIA0IA;->f$2:I

    iget v3, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$gJvq6SA23-KDdwte4ikUNhIA0IA;->f$3:I

    iget v4, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$gJvq6SA23-KDdwte4ikUNhIA0IA;->f$4:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$addShortcut$127$KnoxCustomManagerService(Ljava/lang/String;III)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
