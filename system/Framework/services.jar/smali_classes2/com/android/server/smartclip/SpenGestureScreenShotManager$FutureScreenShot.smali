.class Lcom/android/server/smartclip/SpenGestureScreenShotManager$FutureScreenShot;
.super Ljava/util/concurrent/FutureTask;
.source "SpenGestureManagerService.java"

# interfaces
.implements Lcom/android/server/smartclip/SpenGestureScreenShotManager$ScreenShot;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/smartclip/SpenGestureScreenShotManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FutureScreenShot"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/FutureTask<",
        "Lcom/android/server/smartclip/SpenGestureScreenShotManager$RealScreenShot;",
        ">;",
        "Lcom/android/server/smartclip/SpenGestureScreenShotManager$ScreenShot;"
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 2210
    const-string v0, "FutureScreenShot"

    sput-object v0, Lcom/android/server/smartclip/SpenGestureScreenShotManager$FutureScreenShot;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Callable;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "Lcom/android/server/smartclip/SpenGestureScreenShotManager$RealScreenShot;",
            ">;)V"
        }
    .end annotation

    .line 2213
    .local p1, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Lcom/android/server/smartclip/SpenGestureScreenShotManager$RealScreenShot;>;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 2214
    return-void
.end method


# virtual methods
.method public getScreenShot()Landroid/graphics/Bitmap;
    .registers 5

    .line 2217
    const/4 v0, 0x0

    .line 2220
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/smartclip/SpenGestureScreenShotManager$FutureScreenShot;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/smartclip/SpenGestureScreenShotManager$RealScreenShot;

    invoke-virtual {v1}, Lcom/android/server/smartclip/SpenGestureScreenShotManager$RealScreenShot;->getScreenShot()Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_b} :catch_18
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_b} :catch_d

    move-object v0, v1

    .line 2225
    :goto_c
    goto :goto_23

    .line 2223
    :catch_d
    move-exception v1

    .line 2224
    .local v1, "e":Ljava/util/concurrent/ExecutionException;
    sget-object v2, Lcom/android/server/smartclip/SpenGestureScreenShotManager$FutureScreenShot;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23

    .line 2221
    .end local v1    # "e":Ljava/util/concurrent/ExecutionException;
    :catch_18
    move-exception v1

    .line 2222
    .local v1, "e":Ljava/lang/InterruptedException;
    sget-object v2, Lcom/android/server/smartclip/SpenGestureScreenShotManager$FutureScreenShot;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "e":Ljava/lang/InterruptedException;
    goto :goto_c

    .line 2227
    :goto_23
    return-object v0
.end method
