.class public final synthetic Lcom/android/server/autofill/ui/-$$Lambda$SaveUi$fxi0W7ZZRfUjJNMCN4Bc815X6b4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/autofill/ui/-$$Lambda$SaveUi$fxi0W7ZZRfUjJNMCN4Bc815X6b4;->f$0:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/autofill/ui/-$$Lambda$SaveUi$fxi0W7ZZRfUjJNMCN4Bc815X6b4;->f$0:Ljava/util/List;

    check-cast p1, Landroid/view/View;

    invoke-static {v0, p1}, Lcom/android/server/autofill/ui/SaveUi;->lambda$applyTextViewStyle$6(Ljava/util/List;Landroid/view/View;)Z

    move-result p1

    return p1
.end method
