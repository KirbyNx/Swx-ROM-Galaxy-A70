.class public final synthetic Lcom/android/server/textclassifier/-$$Lambda$TextClassificationManagerService$ZPSzw7rhpLr5Q8xyfx1i_csyNwE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;


# instance fields
.field public final synthetic f$0:Landroid/view/textclassifier/TextClassificationContext;

.field public final synthetic f$1:Landroid/view/textclassifier/TextClassificationSessionId;


# direct methods
.method public synthetic constructor <init>(Landroid/view/textclassifier/TextClassificationContext;Landroid/view/textclassifier/TextClassificationSessionId;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/textclassifier/-$$Lambda$TextClassificationManagerService$ZPSzw7rhpLr5Q8xyfx1i_csyNwE;->f$0:Landroid/view/textclassifier/TextClassificationContext;

    iput-object p2, p0, Lcom/android/server/textclassifier/-$$Lambda$TextClassificationManagerService$ZPSzw7rhpLr5Q8xyfx1i_csyNwE;->f$1:Landroid/view/textclassifier/TextClassificationSessionId;

    return-void
.end method


# virtual methods
.method public final acceptOrThrow(Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/textclassifier/-$$Lambda$TextClassificationManagerService$ZPSzw7rhpLr5Q8xyfx1i_csyNwE;->f$0:Landroid/view/textclassifier/TextClassificationContext;

    iget-object v1, p0, Lcom/android/server/textclassifier/-$$Lambda$TextClassificationManagerService$ZPSzw7rhpLr5Q8xyfx1i_csyNwE;->f$1:Landroid/view/textclassifier/TextClassificationSessionId;

    check-cast p1, Landroid/service/textclassifier/ITextClassifierService;

    invoke-static {v0, v1, p1}, Lcom/android/server/textclassifier/TextClassificationManagerService;->lambda$onCreateTextClassificationSession$7(Landroid/view/textclassifier/TextClassificationContext;Landroid/view/textclassifier/TextClassificationSessionId;Landroid/service/textclassifier/ITextClassifierService;)V

    return-void
.end method
