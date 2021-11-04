.class public final synthetic Lcom/android/server/wm/-$$Lambda$ScreenshotController$cM-bjhYQtqVCG2JYeqouNH68OaM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(IZ)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/wm/-$$Lambda$ScreenshotController$cM-bjhYQtqVCG2JYeqouNH68OaM;->f$0:I

    iput-boolean p2, p0, Lcom/android/server/wm/-$$Lambda$ScreenshotController$cM-bjhYQtqVCG2JYeqouNH68OaM;->f$1:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 4

    iget v0, p0, Lcom/android/server/wm/-$$Lambda$ScreenshotController$cM-bjhYQtqVCG2JYeqouNH68OaM;->f$0:I

    iget-boolean v1, p0, Lcom/android/server/wm/-$$Lambda$ScreenshotController$cM-bjhYQtqVCG2JYeqouNH68OaM;->f$1:Z

    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-static {v0, v1, p1}, Lcom/android/server/wm/ScreenshotController;->lambda$updateScreenshotRestrictionPolicyLocked$3(IZLcom/android/server/wm/WindowState;)V

    return-void
.end method
