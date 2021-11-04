.class public final Lcom/android/server/power/PowerManagerUtil$History;
.super Ljava/lang/Object;
.source "PowerManagerUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "History"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/PowerManagerUtil$History$HistoryInternal;
    }
.end annotation


# static fields
.field private static final MAX_HISTORY:I = 0xc8

.field public static final REASON_AUTOBRIGHTNESS_LIMIT:I = 0x4

.field public static final REASON_COVER_LIMIT:I = 0x80

.field public static final REASON_CURTAIN:I = 0x8

.field public static final REASON_HBM_BLOCK:I = 0x100

.field public static final REASON_MASTER_LIMIT:I = 0x2

.field public static final REASON_OVERRIDE:I = 0x20

.field public static final REASON_SCALE_FACTOR:I = 0x1

.field public static final REASON_SUSTAINABLE_HBM:I = 0x10

.field public static final REASON_TEMPORARY:I = 0x40

.field private static mLastReasonMask:I

.field private static mReasonMask:I

.field private static sHistoryAutoBrightness:Lcom/android/internal/util/RingBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/RingBuffer<",
            "Lcom/android/server/power/PowerManagerUtil$History$HistoryInternal;",
            ">;"
        }
    .end annotation
.end field

.field private static sHistoryChangeReason:Lcom/android/internal/util/RingBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/RingBuffer<",
            "Lcom/android/server/power/PowerManagerUtil$History$HistoryInternal;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 490
    new-instance v0, Lcom/android/internal/util/RingBuffer;

    const-class v1, Lcom/android/server/power/PowerManagerUtil$History$HistoryInternal;

    const/16 v2, 0xc8

    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/lang/Class;I)V

    sput-object v0, Lcom/android/server/power/PowerManagerUtil$History;->sHistoryAutoBrightness:Lcom/android/internal/util/RingBuffer;

    .line 494
    new-instance v0, Lcom/android/internal/util/RingBuffer;

    const-class v1, Lcom/android/server/power/PowerManagerUtil$History$HistoryInternal;

    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/lang/Class;I)V

    sput-object v0, Lcom/android/server/power/PowerManagerUtil$History;->sHistoryChangeReason:Lcom/android/internal/util/RingBuffer;

    .line 507
    const/4 v0, 0x0

    sput v0, Lcom/android/server/power/PowerManagerUtil$History;->mReasonMask:I

    .line 508
    sput v0, Lcom/android/server/power/PowerManagerUtil$History;->mLastReasonMask:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 486
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addAutoBrightness(Ljava/lang/String;)V
    .registers 4
    .param p0, "msg"    # Ljava/lang/String;

    .line 512
    sget-object v0, Lcom/android/server/power/PowerManagerUtil$History;->sHistoryAutoBrightness:Lcom/android/internal/util/RingBuffer;

    new-instance v1, Lcom/android/server/power/PowerManagerUtil$History$HistoryInternal;

    invoke-static {}, Lcom/android/server/power/PowerManagerUtil;->getCurrentTime()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/android/server/power/PowerManagerUtil$History$HistoryInternal;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V

    .line 513
    return-void
.end method

.method public static addChangeReason(Ljava/lang/String;)V
    .registers 7
    .param p0, "msg"    # Ljava/lang/String;

    .line 525
    sget-object v0, Lcom/android/server/power/PowerManagerUtil$History;->sHistoryChangeReason:Lcom/android/internal/util/RingBuffer;

    new-instance v1, Lcom/android/server/power/PowerManagerUtil$History$HistoryInternal;

    invoke-static {}, Lcom/android/server/power/PowerManagerUtil;->getCurrentTime()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 526
    sget v4, Lcom/android/server/power/PowerManagerUtil$History;->mReasonMask:I

    if-eqz v4, :cond_2a

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/power/PowerManagerUtil$History;->getChangeReasonString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2c

    :cond_2a
    const-string v4, ""

    :goto_2c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/server/power/PowerManagerUtil$History$HistoryInternal;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    invoke-virtual {v0, v1}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V

    .line 527
    return-void
.end method

.method public static getAutoBrightness()[Lcom/android/server/power/PowerManagerUtil$History$HistoryInternal;
    .registers 1

    .line 516
    sget-object v0, Lcom/android/server/power/PowerManagerUtil$History;->sHistoryAutoBrightness:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v0}, Lcom/android/internal/util/RingBuffer;->toArray()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/power/PowerManagerUtil$History$HistoryInternal;

    return-object v0
.end method

.method public static getAutoBrightnessSize()I
    .registers 1

    .line 520
    sget-object v0, Lcom/android/server/power/PowerManagerUtil$History;->sHistoryAutoBrightness:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v0}, Lcom/android/internal/util/RingBuffer;->size()I

    move-result v0

    return v0
.end method

.method public static getChangeReason()[Lcom/android/server/power/PowerManagerUtil$History$HistoryInternal;
    .registers 1

    .line 556
    sget-object v0, Lcom/android/server/power/PowerManagerUtil$History;->sHistoryChangeReason:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v0}, Lcom/android/internal/util/RingBuffer;->toArray()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/power/PowerManagerUtil$History$HistoryInternal;

    return-object v0
.end method

.method public static getChangeReasonSize()I
    .registers 1

    .line 560
    sget-object v0, Lcom/android/server/power/PowerManagerUtil$History;->sHistoryChangeReason:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v0}, Lcom/android/internal/util/RingBuffer;->size()I

    move-result v0

    return v0
.end method

.method public static getChangeReasonString()Ljava/lang/String;
    .registers 3

    .line 530
    const-string v0, ""

    .line 531
    .local v0, "result":Ljava/lang/String;
    sget v1, Lcom/android/server/power/PowerManagerUtil$History;->mReasonMask:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_19

    .line 532
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " \'ScaleFactor\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 534
    :cond_19
    sget v1, Lcom/android/server/power/PowerManagerUtil$History;->mReasonMask:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_30

    .line 535
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " \'MB Limit\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 537
    :cond_30
    sget v1, Lcom/android/server/power/PowerManagerUtil$History;->mReasonMask:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_47

    .line 538
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " \'AB Limit\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 540
    :cond_47
    sget v1, Lcom/android/server/power/PowerManagerUtil$History;->mReasonMask:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_5e

    .line 541
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " \'Curtain\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 543
    :cond_5e
    sget v1, Lcom/android/server/power/PowerManagerUtil$History;->mReasonMask:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_75

    .line 544
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " \'Override\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 546
    :cond_75
    sget v1, Lcom/android/server/power/PowerManagerUtil$History;->mReasonMask:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_8c

    .line 547
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " \'Temporary\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 549
    :cond_8c
    sget v1, Lcom/android/server/power/PowerManagerUtil$History;->mReasonMask:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_a3

    .line 550
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " \'HBM Block\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 552
    :cond_a3
    return-object v0
.end method

.method public static markBit(I)V
    .registers 2
    .param p0, "mark"    # I

    .line 564
    sget v0, Lcom/android/server/power/PowerManagerUtil$History;->mReasonMask:I

    or-int/2addr v0, p0

    sput v0, Lcom/android/server/power/PowerManagerUtil$History;->mReasonMask:I

    .line 565
    return-void
.end method

.method public static reasonChanged()Z
    .registers 2

    .line 572
    sget v0, Lcom/android/server/power/PowerManagerUtil$History;->mReasonMask:I

    sget v1, Lcom/android/server/power/PowerManagerUtil$History;->mLastReasonMask:I

    if-eq v0, v1, :cond_a

    .line 573
    sput v0, Lcom/android/server/power/PowerManagerUtil$History;->mLastReasonMask:I

    .line 574
    const/4 v0, 0x1

    return v0

    .line 576
    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method public static unMarkBit(I)V
    .registers 3
    .param p0, "mark"    # I

    .line 568
    sget v0, Lcom/android/server/power/PowerManagerUtil$History;->mReasonMask:I

    not-int v1, p0

    and-int/2addr v0, v1

    sput v0, Lcom/android/server/power/PowerManagerUtil$History;->mReasonMask:I

    .line 569
    return-void
.end method
