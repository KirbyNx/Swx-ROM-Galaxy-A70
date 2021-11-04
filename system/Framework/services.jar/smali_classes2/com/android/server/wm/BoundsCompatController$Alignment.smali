.class final Lcom/android/server/wm/BoundsCompatController$Alignment;
.super Ljava/lang/Object;
.source "BoundsCompatController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/BoundsCompatController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Alignment"
.end annotation


# static fields
.field private static final DISPLAY_COMPAT_MODE_SHIFT:I = 0x0

.field private static final FIXED_ASPECT_RATIO_MODE_SHIFT:I = 0x4

.field private static final HORIZONTAL_LEFT:I = 0x4

.field private static final HORIZONTAL_MASK:I = 0xc

.field private static final HORIZONTAL_RIGHT:I = 0x8

.field private static final SET_BOUNDS_COMPAT_ALIGNMENT:Ljava/lang/String; = "-setBoundsCompatAlignment"

.field private static final VERTICAL_BOTTOM:I = 0x2

.field private static final VERTICAL_MASK:I = 0x3

.field private static final VERTICAL_TOP:I = 0x1


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 597
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(II)Z
    .registers 3
    .param p0, "x0"    # I
    .param p1, "x1"    # I

    .line 597
    invoke-static {p0, p1}, Lcom/android/server/wm/BoundsCompatController$Alignment;->isVerticalTop(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(II)Z
    .registers 3
    .param p0, "x0"    # I
    .param p1, "x1"    # I

    .line 597
    invoke-static {p0, p1}, Lcom/android/server/wm/BoundsCompatController$Alignment;->isVerticalBottom(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(II)Z
    .registers 3
    .param p0, "x0"    # I
    .param p1, "x1"    # I

    .line 597
    invoke-static {p0, p1}, Lcom/android/server/wm/BoundsCompatController$Alignment;->isHorizontalLeft(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(II)Z
    .registers 3
    .param p0, "x0"    # I
    .param p1, "x1"    # I

    .line 597
    invoke-static {p0, p1}, Lcom/android/server/wm/BoundsCompatController$Alignment;->isHorizontalRight(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(I)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # I

    .line 597
    invoke-static {p0}, Lcom/android/server/wm/BoundsCompatController$Alignment;->alignmentToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static alignmentToString(I)Ljava/lang/String;
    .registers 6
    .param p0, "alignment"    # I

    .line 626
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Alignment=0b"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", DisplayCompatMode Alignment={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 628
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lcom/android/server/wm/BoundsCompatController$Alignment;->alignmentToString(IIZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 629
    invoke-static {p0, v1, v1}, Lcom/android/server/wm/BoundsCompatController$Alignment;->alignmentToString(IIZ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "}, FixedAspectRatioMode Alignment={"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 631
    const/4 v4, 0x4

    invoke-static {p0, v4, v2}, Lcom/android/server/wm/BoundsCompatController$Alignment;->alignmentToString(IIZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 632
    invoke-static {p0, v4, v1}, Lcom/android/server/wm/BoundsCompatController$Alignment;->alignmentToString(IIZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 626
    return-object v0
.end method

.method private static alignmentToString(IIZ)Ljava/lang/String;
    .registers 4
    .param p0, "alignment"    # I
    .param p1, "modeShift"    # I
    .param p2, "isVertical"    # Z

    .line 636
    if-eqz p2, :cond_17

    .line 637
    invoke-static {p0, p1}, Lcom/android/server/wm/BoundsCompatController$Alignment;->isVerticalTop(II)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 638
    const-string v0, "VerticalTop"

    return-object v0

    .line 639
    :cond_b
    invoke-static {p0, p1}, Lcom/android/server/wm/BoundsCompatController$Alignment;->isVerticalBottom(II)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 640
    const-string v0, "VerticalBottom"

    return-object v0

    .line 642
    :cond_14
    const-string v0, "VerticalCenter"

    return-object v0

    .line 644
    :cond_17
    invoke-static {p0, p1}, Lcom/android/server/wm/BoundsCompatController$Alignment;->isHorizontalLeft(II)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 645
    const-string v0, "HorizontalLeft"

    return-object v0

    .line 646
    :cond_20
    invoke-static {p0, p1}, Lcom/android/server/wm/BoundsCompatController$Alignment;->isHorizontalRight(II)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 647
    const-string v0, "HorizontalRight"

    return-object v0

    .line 649
    :cond_29
    const-string v0, "HorizontalCenter"

    return-object v0
.end method

.method private static isHorizontalLeft(II)Z
    .registers 4
    .param p0, "alignment"    # I
    .param p1, "modeShift"    # I

    .line 619
    shr-int v0, p0, p1

    and-int/lit8 v0, v0, 0xc

    const/4 v1, 0x4

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method private static isHorizontalRight(II)Z
    .registers 4
    .param p0, "alignment"    # I
    .param p1, "modeShift"    # I

    .line 622
    shr-int v0, p0, p1

    and-int/lit8 v0, v0, 0xc

    const/16 v1, 0x8

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private static isVerticalBottom(II)Z
    .registers 4
    .param p0, "alignment"    # I
    .param p1, "modeShift"    # I

    .line 615
    shr-int v0, p0, p1

    and-int/lit8 v0, v0, 0x3

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method private static isVerticalTop(II)Z
    .registers 4
    .param p0, "alignment"    # I
    .param p1, "modeShift"    # I

    .line 611
    shr-int v0, p0, p1

    and-int/lit8 v0, v0, 0x3

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    return v1
.end method
