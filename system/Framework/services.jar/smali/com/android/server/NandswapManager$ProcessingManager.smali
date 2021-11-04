.class final Lcom/android/server/NandswapManager$ProcessingManager;
.super Ljava/lang/Object;
.source "NandswapManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NandswapManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ProcessingManager"
.end annotation


# static fields
.field static final COUNT_MODE:I = 0x1

.field static final SIZE_MODE:I = 0x2

.field private static countList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static objReads:I

.field private static objWrites:I

.field private static reads:I

.field private static sizeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static writes:I


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 598
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 599
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/NandswapManager$ProcessingManager;->countList:Ljava/util/ArrayList;

    .line 600
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/NandswapManager$ProcessingManager;->sizeList:Ljava/util/ArrayList;

    .line 601
    const/4 v0, 0x0

    sput v0, Lcom/android/server/NandswapManager$ProcessingManager;->reads:I

    .line 602
    sput v0, Lcom/android/server/NandswapManager$ProcessingManager;->writes:I

    .line 603
    sput v0, Lcom/android/server/NandswapManager$ProcessingManager;->objReads:I

    .line 604
    sput v0, Lcom/android/server/NandswapManager$ProcessingManager;->objWrites:I

    .line 605
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/NandswapManager$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/android/server/NandswapManager$1;

    .line 587
    invoke-direct {p0}, Lcom/android/server/NandswapManager$ProcessingManager;-><init>()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/NandswapManager$ProcessingManager;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/NandswapManager$ProcessingManager;

    .line 587
    invoke-direct {p0}, Lcom/android/server/NandswapManager$ProcessingManager;->getPreviousWrites()I

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/NandswapManager$ProcessingManager;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/NandswapManager$ProcessingManager;

    .line 587
    invoke-direct {p0}, Lcom/android/server/NandswapManager$ProcessingManager;->getPreviousObjReads()I

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/android/server/NandswapManager$ProcessingManager;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/NandswapManager$ProcessingManager;

    .line 587
    invoke-direct {p0}, Lcom/android/server/NandswapManager$ProcessingManager;->getPreviousObjWrites()I

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/server/NandswapManager$ProcessingManager;IIII)V
    .registers 5
    .param p0, "x0"    # Lcom/android/server/NandswapManager$ProcessingManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .line 587
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/NandswapManager$ProcessingManager;->setPreviousValue(IIII)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/NandswapManager$ProcessingManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/NandswapManager$ProcessingManager;

    .line 587
    invoke-direct {p0}, Lcom/android/server/NandswapManager$ProcessingManager;->clearAllList()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/NandswapManager$ProcessingManager;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/NandswapManager$ProcessingManager;
    .param p1, "x1"    # I

    .line 587
    invoke-direct {p0, p1}, Lcom/android/server/NandswapManager$ProcessingManager;->setCount(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/NandswapManager$ProcessingManager;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/NandswapManager$ProcessingManager;
    .param p1, "x1"    # I

    .line 587
    invoke-direct {p0, p1}, Lcom/android/server/NandswapManager$ProcessingManager;->setSize(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/NandswapManager$ProcessingManager;)D
    .registers 3
    .param p0, "x0"    # Lcom/android/server/NandswapManager$ProcessingManager;

    .line 587
    invoke-direct {p0}, Lcom/android/server/NandswapManager$ProcessingManager;->calcCountAverage()D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$800(Lcom/android/server/NandswapManager$ProcessingManager;)D
    .registers 3
    .param p0, "x0"    # Lcom/android/server/NandswapManager$ProcessingManager;

    .line 587
    invoke-direct {p0}, Lcom/android/server/NandswapManager$ProcessingManager;->calcSizeAverage()D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$900(Lcom/android/server/NandswapManager$ProcessingManager;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/NandswapManager$ProcessingManager;

    .line 587
    invoke-direct {p0}, Lcom/android/server/NandswapManager$ProcessingManager;->getPreviousReads()I

    move-result v0

    return v0
.end method

.method private calcAverage(I)D
    .registers 12
    .param p1, "mode"    # I

    .line 626
    const-wide/16 v0, 0x0

    .line 627
    .local v0, "sum":D
    const-wide/16 v2, 0x0

    .line 628
    .local v2, "ret":D
    const-wide/16 v4, 0x0

    .line 630
    .local v4, "div":D
    const/4 v6, 0x1

    if-ne p1, v6, :cond_2a

    .line 631
    sget-object v6, Lcom/android/server/NandswapManager$ProcessingManager;->countList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    int-to-double v4, v6

    .line 632
    sget-object v6, Lcom/android/server/NandswapManager$ProcessingManager;->countList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_16
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_29

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 633
    .local v7, "iter":Ljava/lang/Integer;
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    int-to-double v8, v8

    add-double/2addr v0, v8

    .line 634
    .end local v7    # "iter":Ljava/lang/Integer;
    goto :goto_16

    :cond_29
    goto :goto_4d

    .line 635
    :cond_2a
    const/4 v6, 0x2

    if-ne p1, v6, :cond_4d

    .line 636
    sget-object v6, Lcom/android/server/NandswapManager$ProcessingManager;->sizeList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    int-to-double v4, v6

    .line 637
    sget-object v6, Lcom/android/server/NandswapManager$ProcessingManager;->sizeList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 638
    .restart local v7    # "iter":Ljava/lang/Integer;
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    int-to-double v8, v8

    add-double/2addr v0, v8

    .line 639
    .end local v7    # "iter":Ljava/lang/Integer;
    goto :goto_3a

    .line 642
    :cond_4d
    :goto_4d
    const-wide/16 v6, 0x0

    cmpl-double v8, v4, v6

    if-nez v8, :cond_54

    .line 643
    return-wide v6

    .line 647
    :cond_54
    div-double v2, v0, v4

    .line 651
    nop

    .line 652
    return-wide v2
.end method

.method private calcCountAverage()D
    .registers 3

    .line 614
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/NandswapManager$ProcessingManager;->calcAverage(I)D

    move-result-wide v0

    return-wide v0
.end method

.method private calcSizeAverage()D
    .registers 3

    .line 617
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/server/NandswapManager$ProcessingManager;->calcAverage(I)D

    move-result-wide v0

    return-wide v0
.end method

.method private clearAllList()V
    .registers 2

    .line 621
    sget-object v0, Lcom/android/server/NandswapManager$ProcessingManager;->countList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 622
    sget-object v0, Lcom/android/server/NandswapManager$ProcessingManager;->sizeList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 623
    return-void
.end method

.method private getPreviousObjReads()I
    .registers 2

    .line 668
    sget v0, Lcom/android/server/NandswapManager$ProcessingManager;->objReads:I

    return v0
.end method

.method private getPreviousObjWrites()I
    .registers 2

    .line 671
    sget v0, Lcom/android/server/NandswapManager$ProcessingManager;->objWrites:I

    return v0
.end method

.method private getPreviousReads()I
    .registers 2

    .line 662
    sget v0, Lcom/android/server/NandswapManager$ProcessingManager;->reads:I

    return v0
.end method

.method private getPreviousWrites()I
    .registers 2

    .line 665
    sget v0, Lcom/android/server/NandswapManager$ProcessingManager;->writes:I

    return v0
.end method

.method private setCount(I)V
    .registers 4
    .param p1, "count"    # I

    .line 607
    sget-object v0, Lcom/android/server/NandswapManager$ProcessingManager;->countList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 608
    return-void
.end method

.method private setPreviousValue(IIII)V
    .registers 5
    .param p1, "reads"    # I
    .param p2, "writes"    # I
    .param p3, "objReads"    # I
    .param p4, "objWrites"    # I

    .line 656
    sput p1, Lcom/android/server/NandswapManager$ProcessingManager;->reads:I

    .line 657
    sput p2, Lcom/android/server/NandswapManager$ProcessingManager;->writes:I

    .line 658
    sput p3, Lcom/android/server/NandswapManager$ProcessingManager;->objReads:I

    .line 659
    sput p4, Lcom/android/server/NandswapManager$ProcessingManager;->objWrites:I

    .line 660
    return-void
.end method

.method private setSize(I)V
    .registers 4
    .param p1, "size"    # I

    .line 610
    sget-object v0, Lcom/android/server/NandswapManager$ProcessingManager;->sizeList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 611
    return-void
.end method
