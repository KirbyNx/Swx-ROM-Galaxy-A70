.class public final synthetic Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$jMyyxMOhrf40WPwkulf9Ie4-uE8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

.field public final synthetic f$1:Landroid/content/ComponentName;

.field public final synthetic f$2:I

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;Landroid/content/ComponentName;II)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$jMyyxMOhrf40WPwkulf9Ie4-uE8;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    iput-object p2, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$jMyyxMOhrf40WPwkulf9Ie4-uE8;->f$1:Landroid/content/ComponentName;

    iput p3, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$jMyyxMOhrf40WPwkulf9Ie4-uE8;->f$2:I

    iput p4, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$jMyyxMOhrf40WPwkulf9Ie4-uE8;->f$3:I

    return-void
.end method


# virtual methods
.method public final getOrThrow()Ljava/lang/Object;
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$jMyyxMOhrf40WPwkulf9Ie4-uE8;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    iget-object v1, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$jMyyxMOhrf40WPwkulf9Ie4-uE8;->f$1:Landroid/content/ComponentName;

    iget v2, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$jMyyxMOhrf40WPwkulf9Ie4-uE8;->f$2:I

    iget v3, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$jMyyxMOhrf40WPwkulf9Ie4-uE8;->f$3:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$addDexShortcut$3$KnoxCustomManagerService(Landroid/content/ComponentName;II)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
