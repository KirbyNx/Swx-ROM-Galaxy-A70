.class public Lcom/android/server/ipm/AufPredictor$DescendingAppUsage;
.super Ljava/lang/Object;
.source "AufPredictor.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ipm/AufPredictor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DescendingAppUsage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/server/ipm/AppRanking;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 569
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/server/ipm/AppRanking;Lcom/android/server/ipm/AppRanking;)I
    .registers 5
    .param p1, "o1"    # Lcom/android/server/ipm/AppRanking;
    .param p2, "o2"    # Lcom/android/server/ipm/AppRanking;

    .line 572
    iget v0, p1, Lcom/android/server/ipm/AppRanking;->launchCount:F

    iget v1, p2, Lcom/android/server/ipm/AppRanking;->launchCount:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_a

    .line 573
    const/4 v0, 0x1

    return v0

    .line 574
    :cond_a
    iget v0, p1, Lcom/android/server/ipm/AppRanking;->launchCount:F

    iget v1, p2, Lcom/android/server/ipm/AppRanking;->launchCount:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_14

    .line 575
    const/4 v0, -0x1

    return v0

    .line 577
    :cond_14
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 569
    check-cast p1, Lcom/android/server/ipm/AppRanking;

    check-cast p2, Lcom/android/server/ipm/AppRanking;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/ipm/AufPredictor$DescendingAppUsage;->compare(Lcom/android/server/ipm/AppRanking;Lcom/android/server/ipm/AppRanking;)I

    move-result p1

    return p1
.end method
