.class public final synthetic Lcom/android/server/wm/-$$Lambda$ScreenRotationAnimation$e-kOk0nSBQ-sF1vraDFb_lHPBMw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/view/SurfaceControl$Transaction;


# direct methods
.method public synthetic constructor <init>(Landroid/view/SurfaceControl$Transaction;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$ScreenRotationAnimation$e-kOk0nSBQ-sF1vraDFb_lHPBMw;->f$0:Landroid/view/SurfaceControl$Transaction;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$ScreenRotationAnimation$e-kOk0nSBQ-sF1vraDFb_lHPBMw;->f$0:Landroid/view/SurfaceControl$Transaction;

    check-cast p1, Lcom/android/server/wm/WallpaperWindowToken;

    invoke-static {v0, p1}, Lcom/android/server/wm/ScreenRotationAnimation;->lambda$kill$1(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/WallpaperWindowToken;)V

    return-void
.end method
