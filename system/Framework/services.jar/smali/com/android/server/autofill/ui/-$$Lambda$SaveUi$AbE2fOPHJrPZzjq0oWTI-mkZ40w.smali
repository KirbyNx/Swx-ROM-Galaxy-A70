.class public final synthetic Lcom/android/server/autofill/ui/-$$Lambda$SaveUi$AbE2fOPHJrPZzjq0oWTI-mkZ40w;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/widget/RemoteViews$OnClickHandler;


# instance fields
.field public final synthetic f$0:Lcom/android/server/autofill/ui/SaveUi;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/autofill/ui/SaveUi;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/autofill/ui/-$$Lambda$SaveUi$AbE2fOPHJrPZzjq0oWTI-mkZ40w;->f$0:Lcom/android/server/autofill/ui/SaveUi;

    return-void
.end method


# virtual methods
.method public final onClickHandler(Landroid/view/View;Landroid/app/PendingIntent;Landroid/widget/RemoteViews$RemoteResponse;)Z
    .registers 5

    iget-object v0, p0, Lcom/android/server/autofill/ui/-$$Lambda$SaveUi$AbE2fOPHJrPZzjq0oWTI-mkZ40w;->f$0:Lcom/android/server/autofill/ui/SaveUi;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/autofill/ui/SaveUi;->lambda$applyCustomDescription$4$SaveUi(Landroid/view/View;Landroid/app/PendingIntent;Landroid/widget/RemoteViews$RemoteResponse;)Z

    move-result p1

    return p1
.end method
