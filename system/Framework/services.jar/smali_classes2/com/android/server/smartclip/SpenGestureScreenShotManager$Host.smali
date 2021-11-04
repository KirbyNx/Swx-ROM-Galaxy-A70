.class Lcom/android/server/smartclip/SpenGestureScreenShotManager$Host;
.super Ljava/lang/Object;
.source "SpenGestureManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/smartclip/SpenGestureScreenShotManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Host"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 2170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public request(IIZLandroid/graphics/Rect;IIZ)Lcom/android/server/smartclip/SpenGestureScreenShotManager$FutureScreenShot;
    .registers 19
    .param p1, "displayId"    # I
    .param p2, "targetWindowType"    # I
    .param p3, "containsTargetSystemWindow"    # Z
    .param p4, "sourceCrop"    # Landroid/graphics/Rect;
    .param p5, "width"    # I
    .param p6, "height"    # I
    .param p7, "useIdentityTransform"    # Z

    .line 2174
    new-instance v0, Lcom/android/server/smartclip/SpenGestureScreenShotManager$FutureScreenShot;

    new-instance v10, Lcom/android/server/smartclip/SpenGestureScreenShotManager$Host$1;

    move-object v1, v10

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v1 .. v9}, Lcom/android/server/smartclip/SpenGestureScreenShotManager$Host$1;-><init>(Lcom/android/server/smartclip/SpenGestureScreenShotManager$Host;IIZLandroid/graphics/Rect;IIZ)V

    invoke-direct {v0, v10}, Lcom/android/server/smartclip/SpenGestureScreenShotManager$FutureScreenShot;-><init>(Ljava/util/concurrent/Callable;)V

    .line 2180
    .local v0, "future":Lcom/android/server/smartclip/SpenGestureScreenShotManager$FutureScreenShot;
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 2182
    return-object v0
.end method
