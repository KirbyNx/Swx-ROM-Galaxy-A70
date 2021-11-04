.class public final synthetic Lcom/android/server/autofill/ui/-$$Lambda$InlineSuggestionFactory$LrD07pSbranN3J_iiqWJbevtUNk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/autofill/ui/-$$Lambda$InlineSuggestionFactory$LrD07pSbranN3J_iiqWJbevtUNk;->f$0:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/autofill/ui/-$$Lambda$InlineSuggestionFactory$LrD07pSbranN3J_iiqWJbevtUNk;->f$0:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    check-cast p1, Landroid/content/IntentSender;

    invoke-static {v0, p1}, Lcom/android/server/autofill/ui/InlineSuggestionFactory;->lambda$createInlineAuthentication$1(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Landroid/content/IntentSender;)V

    return-void
.end method
