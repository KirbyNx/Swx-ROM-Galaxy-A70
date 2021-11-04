.class public final synthetic Lcom/android/server/people/prediction/-$$Lambda$YyxHEnch1g0ktFuyNAvHCkKiY6A;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/people/prediction/AppTargetPredictor;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/people/prediction/AppTargetPredictor;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/people/prediction/-$$Lambda$YyxHEnch1g0ktFuyNAvHCkKiY6A;->f$0:Lcom/android/server/people/prediction/AppTargetPredictor;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/people/prediction/-$$Lambda$YyxHEnch1g0ktFuyNAvHCkKiY6A;->f$0:Lcom/android/server/people/prediction/AppTargetPredictor;

    invoke-virtual {v0}, Lcom/android/server/people/prediction/AppTargetPredictor;->predictTargets()V

    return-void
.end method
