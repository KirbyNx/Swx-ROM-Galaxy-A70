.class public final synthetic Lcom/android/server/appprediction/-$$Lambda$AppPredictionPerUserService$ot809pjFOVEJ6shAJalMZ9_QhCo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/appprediction/AppPredictionPerUserService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/appprediction/AppPredictionPerUserService;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/appprediction/-$$Lambda$AppPredictionPerUserService$ot809pjFOVEJ6shAJalMZ9_QhCo;->f$0:Lcom/android/server/appprediction/AppPredictionPerUserService;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/appprediction/-$$Lambda$AppPredictionPerUserService$ot809pjFOVEJ6shAJalMZ9_QhCo;->f$0:Lcom/android/server/appprediction/AppPredictionPerUserService;

    check-cast p1, Landroid/app/prediction/AppPredictionSessionId;

    invoke-static {v0, p1}, Lcom/android/server/appprediction/AppPredictionPerUserService;->lambda$ot809pjFOVEJ6shAJalMZ9_QhCo(Lcom/android/server/appprediction/AppPredictionPerUserService;Landroid/app/prediction/AppPredictionSessionId;)V

    return-void
.end method
