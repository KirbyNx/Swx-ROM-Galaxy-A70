.class Lcom/android/server/wm/ScreenshotController$ScreenshotInfo;
.super Ljava/lang/Object;
.source "ScreenshotController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/ScreenshotController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScreenshotInfo"
.end annotation


# instance fields
.field private mBundle:Landroid/os/Bundle;

.field private mDisplay:I

.field private mOrigin:I

.field private mSweepDirection:I

.field private mType:I


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 430
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 431
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/wm/ScreenshotController$ScreenshotInfo;->mType:I

    .line 432
    iput v0, p0, Lcom/android/server/wm/ScreenshotController$ScreenshotInfo;->mSweepDirection:I

    .line 433
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/wm/ScreenshotController$ScreenshotInfo;->mDisplay:I

    .line 434
    iput v0, p0, Lcom/android/server/wm/ScreenshotController$ScreenshotInfo;->mOrigin:I

    .line 435
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/ScreenshotController$ScreenshotInfo;->mBundle:Landroid/os/Bundle;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wm/ScreenshotController$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/android/server/wm/ScreenshotController$1;

    .line 430
    invoke-direct {p0}, Lcom/android/server/wm/ScreenshotController$ScreenshotInfo;-><init>()V

    return-void
.end method


# virtual methods
.method getBundle()Landroid/os/Bundle;
    .registers 2

    .line 462
    iget-object v0, p0, Lcom/android/server/wm/ScreenshotController$ScreenshotInfo;->mBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method getDisplay()I
    .registers 2

    .line 454
    iget v0, p0, Lcom/android/server/wm/ScreenshotController$ScreenshotInfo;->mDisplay:I

    return v0
.end method

.method getOrigin()I
    .registers 2

    .line 458
    iget v0, p0, Lcom/android/server/wm/ScreenshotController$ScreenshotInfo;->mOrigin:I

    return v0
.end method

.method getSweepDirection()I
    .registers 2

    .line 450
    iget v0, p0, Lcom/android/server/wm/ScreenshotController$ScreenshotInfo;->mSweepDirection:I

    return v0
.end method

.method getType()I
    .registers 2

    .line 446
    iget v0, p0, Lcom/android/server/wm/ScreenshotController$ScreenshotInfo;->mType:I

    return v0
.end method

.method set(IIIILandroid/os/Bundle;)V
    .registers 6
    .param p1, "type"    # I
    .param p2, "sweepDirection"    # I
    .param p3, "display"    # I
    .param p4, "origin"    # I
    .param p5, "bundle"    # Landroid/os/Bundle;

    .line 438
    iput p1, p0, Lcom/android/server/wm/ScreenshotController$ScreenshotInfo;->mType:I

    .line 439
    iput p2, p0, Lcom/android/server/wm/ScreenshotController$ScreenshotInfo;->mSweepDirection:I

    .line 440
    iput p3, p0, Lcom/android/server/wm/ScreenshotController$ScreenshotInfo;->mDisplay:I

    .line 441
    iput p4, p0, Lcom/android/server/wm/ScreenshotController$ScreenshotInfo;->mOrigin:I

    .line 442
    iput-object p5, p0, Lcom/android/server/wm/ScreenshotController$ScreenshotInfo;->mBundle:Landroid/os/Bundle;

    .line 443
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 467
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ScreenshotInfo{type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/ScreenshotController$ScreenshotInfo;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sweepDirection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/ScreenshotController$ScreenshotInfo;->mSweepDirection:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", display="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/ScreenshotController$ScreenshotInfo;->mDisplay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", origin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/ScreenshotController$ScreenshotInfo;->mOrigin:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bundle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/ScreenshotController$ScreenshotInfo;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
