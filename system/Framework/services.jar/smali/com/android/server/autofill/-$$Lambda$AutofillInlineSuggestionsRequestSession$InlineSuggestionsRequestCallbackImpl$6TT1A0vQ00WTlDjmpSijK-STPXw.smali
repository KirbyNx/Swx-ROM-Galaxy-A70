.class public final synthetic Lcom/android/server/autofill/-$$Lambda$AutofillInlineSuggestionsRequestSession$InlineSuggestionsRequestCallbackImpl$6TT1A0vQ00WTlDjmpSijK-STPXw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/function/TriConsumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/autofill/-$$Lambda$AutofillInlineSuggestionsRequestSession$InlineSuggestionsRequestCallbackImpl$6TT1A0vQ00WTlDjmpSijK-STPXw;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/autofill/-$$Lambda$AutofillInlineSuggestionsRequestSession$InlineSuggestionsRequestCallbackImpl$6TT1A0vQ00WTlDjmpSijK-STPXw;

    invoke-direct {v0}, Lcom/android/server/autofill/-$$Lambda$AutofillInlineSuggestionsRequestSession$InlineSuggestionsRequestCallbackImpl$6TT1A0vQ00WTlDjmpSijK-STPXw;-><init>()V

    sput-object v0, Lcom/android/server/autofill/-$$Lambda$AutofillInlineSuggestionsRequestSession$InlineSuggestionsRequestCallbackImpl$6TT1A0vQ00WTlDjmpSijK-STPXw;->INSTANCE:Lcom/android/server/autofill/-$$Lambda$AutofillInlineSuggestionsRequestSession$InlineSuggestionsRequestCallbackImpl$6TT1A0vQ00WTlDjmpSijK-STPXw;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    check-cast p1, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;

    check-cast p2, Landroid/view/inputmethod/InlineSuggestionsRequest;

    check-cast p3, Lcom/android/internal/view/IInlineSuggestionsResponseCallback;

    invoke-static {p1, p2, p3}, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession$InlineSuggestionsRequestCallbackImpl;->lambda$onInlineSuggestionsRequest$1(Ljava/lang/Object;Landroid/view/inputmethod/InlineSuggestionsRequest;Lcom/android/internal/view/IInlineSuggestionsResponseCallback;)V

    return-void
.end method
