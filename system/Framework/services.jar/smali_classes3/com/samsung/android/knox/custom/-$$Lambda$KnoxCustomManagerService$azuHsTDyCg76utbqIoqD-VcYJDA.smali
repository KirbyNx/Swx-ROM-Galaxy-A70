.class public final synthetic Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$azuHsTDyCg76utbqIoqD-VcYJDA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

.field public final synthetic f$1:Landroid/content/ComponentName;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;Landroid/content/ComponentName;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$azuHsTDyCg76utbqIoqD-VcYJDA;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    iput-object p2, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$azuHsTDyCg76utbqIoqD-VcYJDA;->f$1:Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public final getOrThrow()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$azuHsTDyCg76utbqIoqD-VcYJDA;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    iget-object v1, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$azuHsTDyCg76utbqIoqD-VcYJDA;->f$1:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$removeDexShortcut$4$KnoxCustomManagerService(Landroid/content/ComponentName;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
