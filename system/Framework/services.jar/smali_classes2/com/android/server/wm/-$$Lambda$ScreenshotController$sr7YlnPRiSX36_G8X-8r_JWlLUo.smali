.class public final synthetic Lcom/android/server/wm/-$$Lambda$ScreenshotController$sr7YlnPRiSX36_G8X-8r_JWlLUo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/ScreenshotController;

.field public final synthetic f$1:I

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/ScreenshotController;IZ)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$ScreenshotController$sr7YlnPRiSX36_G8X-8r_JWlLUo;->f$0:Lcom/android/server/wm/ScreenshotController;

    iput p2, p0, Lcom/android/server/wm/-$$Lambda$ScreenshotController$sr7YlnPRiSX36_G8X-8r_JWlLUo;->f$1:I

    iput-boolean p3, p0, Lcom/android/server/wm/-$$Lambda$ScreenshotController$sr7YlnPRiSX36_G8X-8r_JWlLUo;->f$2:Z

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 5

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$ScreenshotController$sr7YlnPRiSX36_G8X-8r_JWlLUo;->f$0:Lcom/android/server/wm/ScreenshotController;

    iget v1, p0, Lcom/android/server/wm/-$$Lambda$ScreenshotController$sr7YlnPRiSX36_G8X-8r_JWlLUo;->f$1:I

    iget-boolean v2, p0, Lcom/android/server/wm/-$$Lambda$ScreenshotController$sr7YlnPRiSX36_G8X-8r_JWlLUo;->f$2:Z

    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/wm/ScreenshotController;->lambda$takeScreenshotToTargetWindow$2$ScreenshotController(IZLcom/android/server/wm/WindowState;)Z

    move-result p1

    return p1
.end method
