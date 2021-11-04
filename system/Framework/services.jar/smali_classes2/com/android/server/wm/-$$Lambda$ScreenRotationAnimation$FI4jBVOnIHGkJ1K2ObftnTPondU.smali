.class public final synthetic Lcom/android/server/wm/-$$Lambda$ScreenRotationAnimation$FI4jBVOnIHGkJ1K2ObftnTPondU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/ScreenRotationAnimation;

.field public final synthetic f$1:Landroid/view/SurfaceControl$Transaction;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/ScreenRotationAnimation;Landroid/view/SurfaceControl$Transaction;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$ScreenRotationAnimation$FI4jBVOnIHGkJ1K2ObftnTPondU;->f$0:Lcom/android/server/wm/ScreenRotationAnimation;

    iput-object p2, p0, Lcom/android/server/wm/-$$Lambda$ScreenRotationAnimation$FI4jBVOnIHGkJ1K2ObftnTPondU;->f$1:Landroid/view/SurfaceControl$Transaction;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$ScreenRotationAnimation$FI4jBVOnIHGkJ1K2ObftnTPondU;->f$0:Lcom/android/server/wm/ScreenRotationAnimation;

    iget-object v1, p0, Lcom/android/server/wm/-$$Lambda$ScreenRotationAnimation$FI4jBVOnIHGkJ1K2ObftnTPondU;->f$1:Landroid/view/SurfaceControl$Transaction;

    check-cast p1, Lcom/android/server/wm/WallpaperWindowToken;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/ScreenRotationAnimation;->lambda$new$0$ScreenRotationAnimation(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/WallpaperWindowToken;)V

    return-void
.end method
