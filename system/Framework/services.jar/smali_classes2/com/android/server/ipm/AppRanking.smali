.class Lcom/android/server/ipm/AppRanking;
.super Ljava/lang/Object;
.source "AufPredictor.java"


# instance fields
.field launchCount:F

.field oneDayLaunchCount:I

.field packageName:Ljava/lang/String;

.field threeDaysLaunchCount:I

.field totalLaunchCount:I

.field userId:I


# direct methods
.method constructor <init>()V
    .registers 3

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const-string/jumbo v0, "unknown"

    iput-object v0, p0, Lcom/android/server/ipm/AppRanking;->packageName:Ljava/lang/String;

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/ipm/AppRanking;->userId:I

    .line 53
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/ipm/AppRanking;->launchCount:F

    .line 54
    iput v0, p0, Lcom/android/server/ipm/AppRanking;->totalLaunchCount:I

    .line 55
    iput v0, p0, Lcom/android/server/ipm/AppRanking;->threeDaysLaunchCount:I

    .line 56
    iput v0, p0, Lcom/android/server/ipm/AppRanking;->oneDayLaunchCount:I

    .line 57
    return-void
.end method

.method constructor <init>(Ljava/lang/String;IFIII)V
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "count"    # F
    .param p4, "totalCount"    # I
    .param p5, "threeDaysCount"    # I
    .param p6, "oneDayCount"    # I

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/android/server/ipm/AppRanking;->packageName:Ljava/lang/String;

    .line 61
    iput p2, p0, Lcom/android/server/ipm/AppRanking;->userId:I

    .line 62
    iput p3, p0, Lcom/android/server/ipm/AppRanking;->launchCount:F

    .line 63
    iput p4, p0, Lcom/android/server/ipm/AppRanking;->totalLaunchCount:I

    .line 64
    iput p5, p0, Lcom/android/server/ipm/AppRanking;->threeDaysLaunchCount:I

    .line 65
    iput p6, p0, Lcom/android/server/ipm/AppRanking;->oneDayLaunchCount:I

    .line 66
    return-void
.end method
