.class public final synthetic Lcom/android/server/autofill/ui/-$$Lambda$InlineContentProviderImpl$MO0MULXauDTPFsfz8mq3vmRWpKs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/autofill/ui/InlineContentProviderImpl;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:Lcom/android/internal/view/inline/IInlineContentCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/autofill/ui/InlineContentProviderImpl;IILcom/android/internal/view/inline/IInlineContentCallback;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/autofill/ui/-$$Lambda$InlineContentProviderImpl$MO0MULXauDTPFsfz8mq3vmRWpKs;->f$0:Lcom/android/server/autofill/ui/InlineContentProviderImpl;

    iput p2, p0, Lcom/android/server/autofill/ui/-$$Lambda$InlineContentProviderImpl$MO0MULXauDTPFsfz8mq3vmRWpKs;->f$1:I

    iput p3, p0, Lcom/android/server/autofill/ui/-$$Lambda$InlineContentProviderImpl$MO0MULXauDTPFsfz8mq3vmRWpKs;->f$2:I

    iput-object p4, p0, Lcom/android/server/autofill/ui/-$$Lambda$InlineContentProviderImpl$MO0MULXauDTPFsfz8mq3vmRWpKs;->f$3:Lcom/android/internal/view/inline/IInlineContentCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/android/server/autofill/ui/-$$Lambda$InlineContentProviderImpl$MO0MULXauDTPFsfz8mq3vmRWpKs;->f$0:Lcom/android/server/autofill/ui/InlineContentProviderImpl;

    iget v1, p0, Lcom/android/server/autofill/ui/-$$Lambda$InlineContentProviderImpl$MO0MULXauDTPFsfz8mq3vmRWpKs;->f$1:I

    iget v2, p0, Lcom/android/server/autofill/ui/-$$Lambda$InlineContentProviderImpl$MO0MULXauDTPFsfz8mq3vmRWpKs;->f$2:I

    iget-object v3, p0, Lcom/android/server/autofill/ui/-$$Lambda$InlineContentProviderImpl$MO0MULXauDTPFsfz8mq3vmRWpKs;->f$3:Lcom/android/internal/view/inline/IInlineContentCallback;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/autofill/ui/InlineContentProviderImpl;->lambda$provideContent$0$InlineContentProviderImpl(IILcom/android/internal/view/inline/IInlineContentCallback;)V

    return-void
.end method
